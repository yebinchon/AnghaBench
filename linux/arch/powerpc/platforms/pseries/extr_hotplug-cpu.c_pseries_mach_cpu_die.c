
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u8 ;
struct TYPE_5__ {int idle; int donate_dedicated_cpu; } ;
struct TYPE_4__ {int (* suspend_disable_cpu ) () ;} ;


 int BUG () ;
 scalar_t__ CPU_STATE_INACTIVE ;
 scalar_t__ CPU_STATE_OFFLINE ;
 scalar_t__ CPU_STATE_ONLINE ;
 int WARN_ON (int) ;
 int extended_cede_processor (int) ;
 TYPE_2__* get_lppaca () ;
 scalar_t__ get_preferred_offline_state (unsigned int) ;
 int hard_irq_disable () ;
 unsigned int hard_smp_processor_id () ;
 int idle_task_exit () ;
 int local_irq_disable () ;
 int local_irq_enable () ;
 int lppaca_shared_proc (TYPE_2__*) ;
 TYPE_1__ ppc_md ;
 int prep_irq_for_idle () ;
 int rtas_stop_self () ;
 int set_cpu_current_state (unsigned int,scalar_t__) ;
 unsigned int smp_processor_id () ;
 int start_secondary_resume () ;
 int stub1 () ;
 int unregister_slb_shadow (unsigned int) ;
 int xics_teardown_cpu () ;
 scalar_t__ xive_enabled () ;
 int xive_teardown_cpu () ;

__attribute__((used)) static void pseries_mach_cpu_die(void)
{
 unsigned int cpu = smp_processor_id();
 unsigned int hwcpu = hard_smp_processor_id();
 u8 cede_latency_hint = 0;

 local_irq_disable();
 idle_task_exit();
 if (xive_enabled())
  xive_teardown_cpu();
 else
  xics_teardown_cpu();

 if (get_preferred_offline_state(cpu) == CPU_STATE_INACTIVE) {
  set_cpu_current_state(cpu, CPU_STATE_INACTIVE);
  if (ppc_md.suspend_disable_cpu)
   ppc_md.suspend_disable_cpu();

  cede_latency_hint = 2;

  get_lppaca()->idle = 1;
  if (!lppaca_shared_proc(get_lppaca()))
   get_lppaca()->donate_dedicated_cpu = 1;

  while (get_preferred_offline_state(cpu) == CPU_STATE_INACTIVE) {
   while (!prep_irq_for_idle()) {
    local_irq_enable();
    local_irq_disable();
   }

   extended_cede_processor(cede_latency_hint);
  }

  local_irq_disable();

  if (!lppaca_shared_proc(get_lppaca()))
   get_lppaca()->donate_dedicated_cpu = 0;
  get_lppaca()->idle = 0;

  if (get_preferred_offline_state(cpu) == CPU_STATE_ONLINE) {
   unregister_slb_shadow(hwcpu);

   hard_irq_disable();





   start_secondary_resume();
  }
 }


 WARN_ON(get_preferred_offline_state(cpu) != CPU_STATE_OFFLINE);

 set_cpu_current_state(cpu, CPU_STATE_OFFLINE);
 unregister_slb_shadow(hwcpu);
 rtas_stop_self();


 BUG();
 for(;;);
}
