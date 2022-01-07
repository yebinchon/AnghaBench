
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int processorCount; } ;


 int boot_cpuid ;
 int cpu_online_mask ;
 int cpumask_any (int ) ;
 int set_cpu_online (int,int) ;
 int smp_processor_id () ;
 TYPE_1__* vdso_data ;
 int xics_migrate_irqs_away () ;
 scalar_t__ xive_enabled () ;
 int xive_smp_disable_cpu () ;

__attribute__((used)) static int pseries_cpu_disable(void)
{
 int cpu = smp_processor_id();

 set_cpu_online(cpu, 0);
 vdso_data->processorCount--;


 if (cpu == boot_cpuid)
  boot_cpuid = cpumask_any(cpu_online_mask);


 if (xive_enabled())
  xive_smp_disable_cpu();
 else
  xics_migrate_irqs_away();
 return 0;
}
