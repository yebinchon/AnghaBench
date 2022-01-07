
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* cpu_die ) (int) ;} ;


 int CPU_KILL_ME ;
 int CPU_STUCK_IN_KERNEL ;
 TYPE_1__** cpu_ops ;
 int cpu_park_loop () ;
 int pr_crit (char*,int) ;
 int set_cpu_present (int,int ) ;
 int smp_processor_id () ;
 int stub1 (int) ;
 int update_cpu_boot_status (int ) ;

void cpu_die_early(void)
{
 int cpu = smp_processor_id();

 pr_crit("CPU%d: will not boot\n", cpu);


 set_cpu_present(cpu, 0);







 update_cpu_boot_status(CPU_STUCK_IN_KERNEL);

 cpu_park_loop();
}
