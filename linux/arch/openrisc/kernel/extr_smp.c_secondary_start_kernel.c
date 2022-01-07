
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct mm_struct {int mm_count; } ;
struct TYPE_2__ {struct mm_struct* active_mm; } ;


 int CPUHP_AP_ONLINE_IDLE ;
 int atomic_inc (int *) ;
 int complete (int *) ;
 int cpu_running ;
 int cpu_startup_entry (int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 TYPE_1__* current ;
 struct mm_struct init_mm ;
 int local_irq_enable () ;
 int mm_cpumask (struct mm_struct*) ;
 int notify_cpu_starting (unsigned int) ;
 int openrisc_clockevent_init () ;
 int pr_info (char*,unsigned int) ;
 int preempt_disable () ;
 int set_cpu_online (unsigned int,int) ;
 int setup_cpuinfo () ;
 unsigned int smp_processor_id () ;
 int synchronise_count_slave (unsigned int) ;

void secondary_start_kernel(void)
{
 struct mm_struct *mm = &init_mm;
 unsigned int cpu = smp_processor_id();




 atomic_inc(&mm->mm_count);
 current->active_mm = mm;
 cpumask_set_cpu(cpu, mm_cpumask(mm));

 pr_info("CPU%u: Booted secondary processor\n", cpu);

 setup_cpuinfo();
 openrisc_clockevent_init();

 notify_cpu_starting(cpu);




 complete(&cpu_running);

 synchronise_count_slave(cpu);
 set_cpu_online(cpu, 1);

 local_irq_enable();

 preempt_disable();



 cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
}
