import 'package:flutter/material.dart';
import 'package:t_store/utils/constants/colors.dart';
import 'package:t_store/utils/device/device_utility.dart';
import 'package:t_store/utils/helpers/helper_functions.dart';

class TTabBar extends StatelessWidget implements PreferredSizeWidget{
  const TTabBar({super.key, required this.tabs});

  final List<Widget> tabs;

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Material(
        color: dark ? TColors.black : TColors.white,
        child: TabBar(
          isScrollable: true,
          indicatorColor: TColors.primary,
          labelColor: dark ? TColors.white : TColors.primary,
          unselectedLabelColor: TColors.darkerGrey,
          tabs: tabs,
        ),
    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(TDeviceUtils.getAppBarHeight());
}
