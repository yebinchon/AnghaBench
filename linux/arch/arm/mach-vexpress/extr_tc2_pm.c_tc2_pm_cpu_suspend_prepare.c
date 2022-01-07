
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __pa_symbol (int ) ;
 int mcpm_entry_point ;
 int ve_spc_set_resume_addr (unsigned int,unsigned int,int ) ;

__attribute__((used)) static void tc2_pm_cpu_suspend_prepare(unsigned int cpu, unsigned int cluster)
{
 ve_spc_set_resume_addr(cluster, cpu, __pa_symbol(mcpm_entry_point));
}
