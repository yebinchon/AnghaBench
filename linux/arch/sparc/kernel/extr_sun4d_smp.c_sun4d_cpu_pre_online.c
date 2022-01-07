
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * active_mm; } ;
struct TYPE_5__ {int cpu; } ;
struct TYPE_4__ {int (* tlb_all ) () ;int (* cache_all ) () ;} ;


 unsigned long PAGE_OFFSET ;
 int barrier () ;
 int cc_get_imsk () ;
 int cc_set_imsk (int) ;
 int * cpu_callin_map ;
 int* cpu_leds ;
 int cpumask_test_cpu (int,int *) ;
 TYPE_3__* current ;
 TYPE_2__** current_set ;
 int hard_smp_processor_id () ;
 int init_mm ;
 TYPE_1__* local_ops ;
 int mmgrab (int *) ;
 int show_leds (int) ;
 int smp_commenced_mask ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;
 int stub1 () ;
 int stub2 () ;
 int stub3 () ;
 int stub4 () ;
 int sun4d_imsk_lock ;
 int sun4d_swap (unsigned long*,int) ;

void sun4d_cpu_pre_online(void *arg)
{
 unsigned long flags;
 int cpuid;

 cpuid = hard_smp_processor_id();






 sun4d_swap((unsigned long *)&cpu_callin_map[cpuid], 1);
 local_ops->cache_all();
 local_ops->tlb_all();

 while ((unsigned long)current_set[cpuid] < PAGE_OFFSET)
  barrier();

 while (current_set[cpuid]->cpu != cpuid)
  barrier();


 __asm__ __volatile__("ld [%0], %%g6\n\t"
        : : "r" (&current_set[cpuid])
        : "memory" );

 cpu_leds[cpuid] = 0x9;
 show_leds(cpuid);


 mmgrab(&init_mm);
 current->active_mm = &init_mm;

 local_ops->cache_all();
 local_ops->tlb_all();

 while (!cpumask_test_cpu(cpuid, &smp_commenced_mask))
  barrier();

 spin_lock_irqsave(&sun4d_imsk_lock, flags);
 cc_set_imsk(cc_get_imsk() & ~0x4000);
 spin_unlock_irqrestore(&sun4d_imsk_lock, flags);
}
