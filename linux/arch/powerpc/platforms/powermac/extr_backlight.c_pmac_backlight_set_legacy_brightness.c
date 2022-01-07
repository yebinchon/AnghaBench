
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pmac_backlight_set_legacy_brightness (int) ;

int pmac_backlight_set_legacy_brightness(int brightness)
{
 return __pmac_backlight_set_legacy_brightness(brightness);
}
