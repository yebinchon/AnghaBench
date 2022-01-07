
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PRCM_ARM_WFI_STANDBY ;
 int PRCM_ARM_WFI_STANDBY_WFI0 ;
 int PRCM_ARM_WFI_STANDBY_WFI1 ;
 int readl (int ) ;

bool prcmu_is_cpu_in_wfi(int cpu)
{
 return readl(PRCM_ARM_WFI_STANDBY) &
  (cpu ? PRCM_ARM_WFI_STANDBY_WFI1 : PRCM_ARM_WFI_STANDBY_WFI0);
}
