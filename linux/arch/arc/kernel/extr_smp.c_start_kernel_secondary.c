
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mm_struct {int dummy; } ;
struct TYPE_6__ {struct mm_struct* active_mm; } ;
struct TYPE_5__ {int (* init_per_cpu ) (unsigned int) ;} ;
struct TYPE_4__ {int (* init_per_cpu ) (unsigned int) ;} ;


 int CPUHP_AP_ONLINE_IDLE ;
 int cpu_startup_entry (int ) ;
 int cpumask_set_cpu (unsigned int,int ) ;
 TYPE_3__* current ;
 struct mm_struct init_mm ;
 int local_irq_enable () ;
 TYPE_2__* machine_desc ;
 int mm_cpumask (struct mm_struct*) ;
 int mmget (struct mm_struct*) ;
 int mmgrab (struct mm_struct*) ;
 int notify_cpu_starting (unsigned int) ;
 TYPE_1__ plat_smp_ops ;
 int pr_info (char*,unsigned int) ;
 int preempt_disable () ;
 int set_cpu_online (unsigned int,int) ;
 int setup_processor () ;
 unsigned int smp_processor_id () ;
 int stub1 (unsigned int) ;
 int stub2 (unsigned int) ;

void start_kernel_secondary(void)
{
 struct mm_struct *mm = &init_mm;
 unsigned int cpu = smp_processor_id();


 setup_processor();

 mmget(mm);
 mmgrab(mm);
 current->active_mm = mm;
 cpumask_set_cpu(cpu, mm_cpumask(mm));


 if (plat_smp_ops.init_per_cpu)
  plat_smp_ops.init_per_cpu(cpu);

 if (machine_desc->init_per_cpu)
  machine_desc->init_per_cpu(cpu);

 notify_cpu_starting(cpu);
 set_cpu_online(cpu, 1);

 pr_info("## CPU%u LIVE ##: Executing Code...\n", cpu);

 local_irq_enable();
 preempt_disable();
 cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
}
