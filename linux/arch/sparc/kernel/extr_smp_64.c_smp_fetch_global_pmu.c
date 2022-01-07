
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ SUN4V_CHIP_NIAGARA4 ;
 scalar_t__ hypervisor ;
 int smp_cross_call (int *,int ,int ,int ) ;
 scalar_t__ sun4v_chip_type ;
 scalar_t__ tlb_type ;
 int xcall_fetch_glob_pmu ;
 int xcall_fetch_glob_pmu_n4 ;

void smp_fetch_global_pmu(void)
{
 if (tlb_type == hypervisor &&
     sun4v_chip_type >= SUN4V_CHIP_NIAGARA4)
  smp_cross_call(&xcall_fetch_glob_pmu_n4, 0, 0, 0);
 else
  smp_cross_call(&xcall_fetch_glob_pmu, 0, 0, 0);
}
