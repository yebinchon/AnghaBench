
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int disable_backlight_sysfs_if ;

__attribute__((used)) static int video_disable_backlight_sysfs_if(
 const struct dmi_system_id *d)
{
 if (disable_backlight_sysfs_if == -1)
  disable_backlight_sysfs_if = 1;
 return 0;
}
