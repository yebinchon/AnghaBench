
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ipmi_set_timeout (int *,int *,int*) ;
 int atomic_add (int,int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_sub (int,int *) ;
 int ipmi_poll_interface (int ) ;
 int panic_done_count ;
 int panic_halt_ipmi_heartbeat () ;
 int panic_halt_recv_msg ;
 int panic_halt_smi_msg ;
 int pr_warn (char*) ;
 int watchdog_user ;

__attribute__((used)) static void panic_halt_ipmi_set_timeout(void)
{
 int send_heartbeat_now;
 int rv;


 while (atomic_read(&panic_done_count) != 0)
  ipmi_poll_interface(watchdog_user);
 atomic_add(1, &panic_done_count);
 rv = __ipmi_set_timeout(&panic_halt_smi_msg,
    &panic_halt_recv_msg,
    &send_heartbeat_now);
 if (rv) {
  atomic_sub(1, &panic_done_count);
  pr_warn("Unable to extend the watchdog timeout\n");
 } else {
  if (send_heartbeat_now)
   panic_halt_ipmi_heartbeat();
 }
 while (atomic_read(&panic_done_count) != 0)
  ipmi_poll_interface(watchdog_user);
}
