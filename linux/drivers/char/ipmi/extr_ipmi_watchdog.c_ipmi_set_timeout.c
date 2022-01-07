
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ipmi_set_timeout (int) ;
 int ipmi_watchdog_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipmi_set_timeout(int do_heartbeat)
{
 int rv;

 mutex_lock(&ipmi_watchdog_mutex);
 rv = _ipmi_set_timeout(do_heartbeat);
 mutex_unlock(&ipmi_watchdog_mutex);

 return rv;
}
