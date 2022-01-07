
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ enable_off_mode ;
 int pr_warn (char*) ;

__attribute__((used)) static int am33xx_check_off_mode_enable(void)
{
 if (enable_off_mode)
  pr_warn("WARNING: This platform does not support off-mode, entering DeepSleep suspend.\n");


 return 0;
}
