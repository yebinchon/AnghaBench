
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int IPMI_SET_TIMEOUT_FORCE_HB ;
 int IPMI_SET_TIMEOUT_HB_IF_NECESSARY ;
 int __ipmi_heartbeat () ;
 int __ipmi_set_timeout (int *,int *,int*) ;
 int atomic_set (int *,int) ;
 int msg_tofree ;
 int msg_wait ;
 int recv_msg ;
 int smi_msg ;
 int wait_for_completion (int *) ;
 int watchdog_user ;

__attribute__((used)) static int _ipmi_set_timeout(int do_heartbeat)
{
 int send_heartbeat_now;
 int rv;

 if (!watchdog_user)
  return -ENODEV;

 atomic_set(&msg_tofree, 2);

 rv = __ipmi_set_timeout(&smi_msg,
    &recv_msg,
    &send_heartbeat_now);
 if (rv)
  return rv;

 wait_for_completion(&msg_wait);

 if ((do_heartbeat == IPMI_SET_TIMEOUT_FORCE_HB)
  || ((send_heartbeat_now)
      && (do_heartbeat == IPMI_SET_TIMEOUT_HB_IF_NECESSARY)))
  rv = __ipmi_heartbeat();

 return rv;
}
