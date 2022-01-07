
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CPU_STATE_ONLINE ;
 int FW_FEATURE_SPLPAR ;
 int boot_cpuid ;
 int cpumask_clear_cpu (int,int ) ;
 scalar_t__ firmware_has_feature (int ) ;
 int of_spin_mask ;
 int set_cpu_current_state (int,int ) ;
 int set_default_offline_state (int) ;
 int vpa_init (int) ;
 int xics_setup_cpu () ;
 scalar_t__ xive_enabled () ;
 int xive_smp_setup_cpu () ;

__attribute__((used)) static void smp_setup_cpu(int cpu)
{
 if (xive_enabled())
  xive_smp_setup_cpu();
 else if (cpu != boot_cpuid)
  xics_setup_cpu();

 if (firmware_has_feature(FW_FEATURE_SPLPAR))
  vpa_init(cpu);

 cpumask_clear_cpu(cpu, of_spin_mask);




}
