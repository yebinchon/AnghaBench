
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rapl_pmu {unsigned int cpu; int timer_interval; int * pmu; int active_list; int lock; } ;
struct TYPE_2__ {struct rapl_pmu** pmus; int pmu; } ;


 int ENOMEM ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 int cpu_to_node (unsigned int) ;
 struct rapl_pmu* cpu_to_rapl_pmu (unsigned int) ;
 int cpumask_any_and (int *,int ) ;
 int cpumask_set_cpu (unsigned int,int *) ;
 struct rapl_pmu* kzalloc_node (int,int ,int ) ;
 int ms_to_ktime (int ) ;
 int nr_cpu_ids ;
 int rapl_cpu_mask ;
 int rapl_hrtimer_init (struct rapl_pmu*) ;
 TYPE_1__* rapl_pmus ;
 int rapl_timer_ms ;
 int raw_spin_lock_init (int *) ;
 int topology_die_cpumask (unsigned int) ;
 size_t topology_logical_die_id (unsigned int) ;

__attribute__((used)) static int rapl_cpu_online(unsigned int cpu)
{
 struct rapl_pmu *pmu = cpu_to_rapl_pmu(cpu);
 int target;

 if (!pmu) {
  pmu = kzalloc_node(sizeof(*pmu), GFP_KERNEL, cpu_to_node(cpu));
  if (!pmu)
   return -ENOMEM;

  raw_spin_lock_init(&pmu->lock);
  INIT_LIST_HEAD(&pmu->active_list);
  pmu->pmu = &rapl_pmus->pmu;
  pmu->timer_interval = ms_to_ktime(rapl_timer_ms);
  rapl_hrtimer_init(pmu);

  rapl_pmus->pmus[topology_logical_die_id(cpu)] = pmu;
 }





 target = cpumask_any_and(&rapl_cpu_mask, topology_die_cpumask(cpu));
 if (target < nr_cpu_ids)
  return 0;

 cpumask_set_cpu(cpu, &rapl_cpu_mask);
 pmu->cpu = cpu;
 return 0;
}
