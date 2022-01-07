
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int hw_changes_brightness ;

__attribute__((used)) static int video_hw_changes_brightness(
 const struct dmi_system_id *d)
{
 if (hw_changes_brightness == -1)
  hw_changes_brightness = 1;
 return 0;
}
