
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int setup_APIC_ibs () ;

__attribute__((used)) static int x86_pmu_amd_ibs_starting_cpu(unsigned int cpu)
{
 setup_APIC_ibs();
 return 0;
}
