
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmi_system_id {int dummy; } ;


 int only_lcd ;

__attribute__((used)) static int video_enable_only_lcd(const struct dmi_system_id *d)
{
 only_lcd = 1;
 return 0;
}
