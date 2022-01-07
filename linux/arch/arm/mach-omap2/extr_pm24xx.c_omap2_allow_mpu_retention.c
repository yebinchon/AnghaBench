
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int omap2xxx_cm_mpu_retention_allowed () ;
 scalar_t__ sti_console_enabled ;

__attribute__((used)) static int omap2_allow_mpu_retention(void)
{
 if (!omap2xxx_cm_mpu_retention_allowed())
  return 0;
 if (sti_console_enabled)
  return 0;

 return 1;
}
