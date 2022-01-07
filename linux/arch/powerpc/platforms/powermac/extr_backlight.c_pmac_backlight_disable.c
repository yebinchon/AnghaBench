
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int atomic_inc (int *) ;
 int kernel_backlight_disabled ;

void pmac_backlight_disable(void)
{
 atomic_inc(&kernel_backlight_disabled);
}
