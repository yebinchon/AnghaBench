
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int microcode; } ;


 int __reload_late ;
 int atomic_set (int *,int ) ;
 TYPE_1__ boot_cpu_data ;
 int cpu_online_mask ;
 int late_cpus_in ;
 int late_cpus_out ;
 int microcode_check () ;
 int pr_info (char*,int ) ;
 int stop_machine_cpuslocked (int ,int *,int ) ;

__attribute__((used)) static int microcode_reload_late(void)
{
 int ret;

 atomic_set(&late_cpus_in, 0);
 atomic_set(&late_cpus_out, 0);

 ret = stop_machine_cpuslocked(__reload_late, ((void*)0), cpu_online_mask);
 if (ret > 0)
  microcode_check();

 pr_info("Reload completed, microcode revision: 0x%x\n", boot_cpu_data.microcode);

 return ret;
}
