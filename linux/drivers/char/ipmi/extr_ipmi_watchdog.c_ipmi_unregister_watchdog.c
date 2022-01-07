
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ipmi_user {int dummy; } ;


 scalar_t__ atomic_read (int *) ;
 int ipmi_destroy_user (struct ipmi_user*) ;
 int ipmi_start_timer_on_heartbeat ;
 int ipmi_watchdog_mutex ;
 int ipmi_wdog_miscdev ;
 int misc_deregister (int *) ;
 int msg_free_smi (int *) ;
 int msg_tofree ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_warn (char*,int) ;
 int watchdog_ifnum ;
 struct ipmi_user* watchdog_user ;

__attribute__((used)) static void ipmi_unregister_watchdog(int ipmi_intf)
{
 int rv;
 struct ipmi_user *loc_user = watchdog_user;

 if (!loc_user)
  return;

 if (watchdog_ifnum != ipmi_intf)
  return;


 misc_deregister(&ipmi_wdog_miscdev);

 watchdog_user = ((void*)0);






 while (atomic_read(&msg_tofree))
  msg_free_smi(((void*)0));

 mutex_lock(&ipmi_watchdog_mutex);


 rv = ipmi_destroy_user(loc_user);
 if (rv)
  pr_warn("error unlinking from IPMI: %d\n", rv);


 ipmi_start_timer_on_heartbeat = 1;

 mutex_unlock(&ipmi_watchdog_mutex);
}
