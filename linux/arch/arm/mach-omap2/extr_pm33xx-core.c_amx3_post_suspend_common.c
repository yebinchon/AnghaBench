
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PWRDM_POWER_OFF ;
 int gfx_pwrdm ;
 int pr_err (char*,int) ;
 int pwrdm_read_pwrst (int ) ;

__attribute__((used)) static void amx3_post_suspend_common(void)
{
 int status;




 status = pwrdm_read_pwrst(gfx_pwrdm);
 if (status != PWRDM_POWER_OFF)
  pr_err("PM: GFX domain did not transition: %x\n", status);
}
