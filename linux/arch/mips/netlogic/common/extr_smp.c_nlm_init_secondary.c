
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int package; } ;


 int NLM_THREADS_PER_CORE ;
 int cpu_set_core (TYPE_1__*,int) ;
 TYPE_1__ current_cpu_data ;
 int hard_smp_processor_id () ;
 int nlm_nodeid () ;
 int nlm_percpu_init (int) ;
 int nlm_smp_irq_init (int) ;

__attribute__((used)) static void nlm_init_secondary(void)
{
 int hwtid;

 hwtid = hard_smp_processor_id();
 cpu_set_core(&current_cpu_data, hwtid / NLM_THREADS_PER_CORE);
 current_cpu_data.package = nlm_nodeid();
 nlm_percpu_init(hwtid);
 nlm_smp_irq_init(hwtid);
}
