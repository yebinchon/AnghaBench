
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct uv_hub_nmi_s {int dummy; } ;
struct pt_regs {int dummy; } ;
struct TYPE_2__ {int state; int pinging; } ;


 int NMI_DONE ;
 int NMI_HANDLED ;
 int SLAVE_CLEAR ;
 int UV_NMI_STATE_OUT ;
 int atomic_read (int *) ;
 int atomic_set (int *,int) ;
 scalar_t__ cpumask_weight (int ) ;
 int local_irq_restore (unsigned long) ;
 int local_irq_save (unsigned long) ;
 int pr_alert (char*,int ) ;
 int smp_processor_id () ;
 int strlen (int ) ;
 int strncpy (int ,char*,int ) ;
 int this_cpu_read (int ) ;
 int this_cpu_write (int ,int ) ;
 int uv_call_kgdb_kdb (int,struct pt_regs*,int) ;
 int uv_check_nmi (struct uv_hub_nmi_s*) ;
 int uv_clear_nmi (int) ;
 TYPE_1__ uv_cpu_nmi ;
 struct uv_hub_nmi_s* uv_hub_nmi ;
 int uv_in_nmi ;
 int uv_nmi_action ;
 int uv_nmi_action_health (int,struct pt_regs*,int) ;
 scalar_t__ uv_nmi_action_is (char*) ;
 int uv_nmi_cleanup_mask () ;
 int uv_nmi_cpu ;
 int uv_nmi_cpu_mask ;
 int uv_nmi_cpus_in_nmi ;
 int uv_nmi_dump_state (int,struct pt_regs*,int) ;
 int uv_nmi_kdump (int,int,struct pt_regs*) ;
 int uv_nmi_kexec_failed ;
 int uv_nmi_slave_continue ;
 int uv_nmi_sync_exit (int) ;
 int uv_nmi_touch_watchdogs () ;
 int uv_nmi_wait (int) ;

__attribute__((used)) static int uv_handle_nmi(unsigned int reason, struct pt_regs *regs)
{
 struct uv_hub_nmi_s *hub_nmi = uv_hub_nmi;
 int cpu = smp_processor_id();
 int master = 0;
 unsigned long flags;

 local_irq_save(flags);


 if (!this_cpu_read(uv_cpu_nmi.pinging) && !uv_check_nmi(hub_nmi)) {
  local_irq_restore(flags);
  return NMI_DONE;
 }


 master = (atomic_read(&uv_nmi_cpu) == cpu);


 if (uv_nmi_action_is("kdump")) {
  uv_nmi_kdump(cpu, master, regs);


  if (master)
   strncpy(uv_nmi_action, "dump", strlen(uv_nmi_action));
 }


 uv_nmi_wait(master);


 if (uv_nmi_action_is("health")) {
  uv_nmi_action_health(cpu, regs, master);
 } else if (uv_nmi_action_is("ips") || uv_nmi_action_is("dump")) {
  uv_nmi_dump_state(cpu, regs, master);
 } else if (uv_nmi_action_is("kdb") || uv_nmi_action_is("kgdb")) {
  uv_call_kgdb_kdb(cpu, regs, master);
 } else {
  if (master)
   pr_alert("UV: unknown NMI action: %s\n", uv_nmi_action);
  uv_nmi_sync_exit(master);
 }


 this_cpu_write(uv_cpu_nmi.state, UV_NMI_STATE_OUT);


 uv_clear_nmi(cpu);


 if (master) {
  if (cpumask_weight(uv_nmi_cpu_mask))
   uv_nmi_cleanup_mask();
  atomic_set(&uv_nmi_cpus_in_nmi, -1);
  atomic_set(&uv_nmi_cpu, -1);
  atomic_set(&uv_in_nmi, 0);
  atomic_set(&uv_nmi_kexec_failed, 0);
  atomic_set(&uv_nmi_slave_continue, SLAVE_CLEAR);
 }

 uv_nmi_touch_watchdogs();
 local_irq_restore(flags);

 return NMI_HANDLED;
}
