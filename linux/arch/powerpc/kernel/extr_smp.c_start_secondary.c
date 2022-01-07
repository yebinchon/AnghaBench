
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {int * active_mm; } ;
struct TYPE_5__ {int (* take_timebase ) () ;int (* setup_cpu ) (unsigned int) ;} ;
struct TYPE_4__ {int processorCount; } ;


 int BUG () ;
 int CPUHP_AP_ONLINE_IDLE ;
 scalar_t__ SYSTEM_RUNNING ;
 int add_cpu_to_masks (unsigned int) ;
 int boot_init_stack_canary () ;
 int* cpu_callin_map ;
 int cpu_l2_cache_mask (unsigned int) ;
 struct cpumask* cpu_sibling_mask (int) ;
 struct cpumask* cpu_smallcore_mask (int) ;
 int cpu_startup_entry (int ) ;
 int cpumask_equal (int ,struct cpumask*) ;
 TYPE_3__* current ;
 scalar_t__ has_big_cores ;
 int init_mm ;
 int local_irq_enable () ;
 int local_memory_node (int ) ;
 int mmgrab (int *) ;
 int notify_cpu_starting (unsigned int) ;
 int * numa_cpu_lookup_table ;
 int preempt_disable () ;
 int secondary_cpu_time_init () ;
 int set_cpu_online (unsigned int,int) ;
 int set_dec (int ) ;
 int set_numa_mem (int ) ;
 int set_numa_node (int ) ;
 int shared_caches ;
 TYPE_2__* smp_ops ;
 unsigned int smp_processor_id () ;
 int smp_store_cpu_info (unsigned int) ;
 int smp_wmb () ;
 int stub1 (unsigned int) ;
 int stub2 () ;
 scalar_t__ system_state ;
 int tb_ticks_per_jiffy ;
 int this_cpu_enable_ftrace () ;
 TYPE_1__* vdso_data ;
 int vdso_getcpu_init () ;

void start_secondary(void *unused)
{
 unsigned int cpu = smp_processor_id();
 struct cpumask *(*sibling_mask)(int) = cpu_sibling_mask;

 mmgrab(&init_mm);
 current->active_mm = &init_mm;

 smp_store_cpu_info(cpu);
 set_dec(tb_ticks_per_jiffy);
 preempt_disable();
 cpu_callin_map[cpu] = 1;

 if (smp_ops->setup_cpu)
  smp_ops->setup_cpu(cpu);
 if (smp_ops->take_timebase)
  smp_ops->take_timebase();

 secondary_cpu_time_init();
 add_cpu_to_masks(cpu);

 if (has_big_cores)
  sibling_mask = cpu_smallcore_mask;




 if (!cpumask_equal(cpu_l2_cache_mask(cpu), sibling_mask(cpu)))
  shared_caches = 1;

 set_numa_node(numa_cpu_lookup_table[cpu]);
 set_numa_mem(local_memory_node(numa_cpu_lookup_table[cpu]));

 smp_wmb();
 notify_cpu_starting(cpu);
 set_cpu_online(cpu, 1);

 boot_init_stack_canary();

 local_irq_enable();


 this_cpu_enable_ftrace();

 cpu_startup_entry(CPUHP_AP_ONLINE_IDLE);

 BUG();
}
