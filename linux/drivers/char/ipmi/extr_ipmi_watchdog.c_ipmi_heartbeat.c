
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _ipmi_heartbeat () ;
 int ipmi_watchdog_mutex ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;

__attribute__((used)) static int ipmi_heartbeat(void)
{
 int rv;

 mutex_lock(&ipmi_watchdog_mutex);
 rv = _ipmi_heartbeat();
 mutex_unlock(&ipmi_watchdog_mutex);

 return rv;
}
