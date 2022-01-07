
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sa1100fb_mach_info {int dummy; } ;


 int sa11x0_register_device (int *,struct sa1100fb_mach_info*) ;
 int sa11x0fb_device ;

void sa11x0_register_lcd(struct sa1100fb_mach_info *inf)
{
 sa11x0_register_device(&sa11x0fb_device, inf);
}
