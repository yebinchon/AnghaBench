
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int amx3_common_init () ;
 int clkdm_lookup (char*) ;
 int gfx_l4ls_clkdm ;
 int pr_err (char*) ;

__attribute__((used)) static int am33xx_suspend_init(void)
{
 int ret;

 gfx_l4ls_clkdm = clkdm_lookup("gfx_l4ls_gfx_clkdm");

 if (!gfx_l4ls_clkdm) {
  pr_err("PM: Cannot lookup gfx_l4ls_clkdm clockdomains\n");
  return -ENODEV;
 }

 ret = amx3_common_init();

 return ret;
}
