
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int enable_off_mode ;
 scalar_t__ of_machine_is_compatible (char*) ;
 int pr_warn (char*) ;

__attribute__((used)) static int am43xx_check_off_mode_enable(void)
{




 if (of_machine_is_compatible("ti,am437x-gp-evm") && enable_off_mode)
  return enable_off_mode;
 else if (enable_off_mode)
  pr_warn("WARNING: This platform does not support off-mode, entering DeepSleep suspend.\n");

 return 0;
}
