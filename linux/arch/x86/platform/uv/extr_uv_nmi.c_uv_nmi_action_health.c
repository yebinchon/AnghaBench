
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pt_regs {int dummy; } ;


 int SLAVE_EXIT ;
 int atomic_read (int *) ;
 int atomic_set (int *,int ) ;
 int cpu_relax () ;
 int num_online_cpus () ;
 int pr_alert (char*,int) ;
 int uv_nmi_cpus_in_nmi ;
 int uv_nmi_slave_continue ;
 int uv_nmi_sync_exit (int) ;

__attribute__((used)) static void uv_nmi_action_health(int cpu, struct pt_regs *regs, int master)
{
 if (master) {
  int in = atomic_read(&uv_nmi_cpus_in_nmi);
  int out = num_online_cpus() - in;

  pr_alert("UV: NMI CPU health check (non-responding:%d)\n", out);
  atomic_set(&uv_nmi_slave_continue, SLAVE_EXIT);
 } else {
  while (!atomic_read(&uv_nmi_slave_continue))
   cpu_relax();
 }
 uv_nmi_sync_exit(master);
}
