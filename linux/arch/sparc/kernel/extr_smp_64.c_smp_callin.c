
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int * active_mm; } ;
struct TYPE_3__ {scalar_t__ new_child; } ;


 int CPUHP_AP_ONLINE_IDLE ;
 int __flush_tlb_all () ;
 int __local_per_cpu_offset ;
 int __per_cpu_offset (int) ;
 int callin_flag ;
 int cheetah_enable_pcache () ;
 scalar_t__ cheetah_pcache_forced_on ;
 int cpu_startup_entry (int ) ;
 int cpumask_test_cpu (int,int *) ;
 TYPE_2__* current ;
 TYPE_1__* current_thread_info () ;
 int hard_smp_processor_id () ;
 scalar_t__ hypervisor ;
 int init_mm ;
 int local_irq_enable () ;
 int mmgrab (int *) ;
 int notify_cpu_starting (int) ;
 int preempt_disable () ;
 int rmb () ;
 int set_cpu_online (int,int) ;
 int setup_sparc64_timer () ;
 int smp_commenced_mask ;
 int sun4v_ktsb_register () ;
 scalar_t__ tlb_type ;

void smp_callin(void)
{
 int cpuid = hard_smp_processor_id();

 __local_per_cpu_offset = __per_cpu_offset(cpuid);

 if (tlb_type == hypervisor)
  sun4v_ktsb_register();

 __flush_tlb_all();

 setup_sparc64_timer();

 if (cheetah_pcache_forced_on)
  cheetah_enable_pcache();

 callin_flag = 1;
 __asm__ __volatile__("membar #Sync\n\t"
        "flush  %%g6" : : : "memory");




 current_thread_info()->new_child = 0;


 mmgrab(&init_mm);
 current->active_mm = &init_mm;


 notify_cpu_starting(cpuid);

 while (!cpumask_test_cpu(cpuid, &smp_commenced_mask))
  rmb();

 set_cpu_online(cpuid, 1);


 preempt_disable();

 local_irq_enable();

 cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);
}
