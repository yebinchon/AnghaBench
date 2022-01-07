
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int IPMI_SET_TIMEOUT_FORCE_HB ;
 int IPMI_SET_TIMEOUT_HB_IF_NECESSARY ;
 int __ipmi_heartbeat () ;
 int _ipmi_set_timeout (int ) ;
 int action_val ;
 scalar_t__ atomic_cmpxchg (int *,int,int ) ;
 scalar_t__ ipmi_start_timer_on_heartbeat ;
 int ipmi_watchdog_state ;
 int pretimeout_since_last_heartbeat ;
 int watchdog_user ;

__attribute__((used)) static int _ipmi_heartbeat(void)
{
 int rv;

 if (!watchdog_user)
  return -ENODEV;

 if (ipmi_start_timer_on_heartbeat) {
  ipmi_start_timer_on_heartbeat = 0;
  ipmi_watchdog_state = action_val;
  rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_FORCE_HB);
 } else if (atomic_cmpxchg(&pretimeout_since_last_heartbeat, 1, 0)) {






  rv = _ipmi_set_timeout(IPMI_SET_TIMEOUT_HB_IF_NECESSARY);
 } else {
  rv = __ipmi_heartbeat();
 }

 return rv;
}
