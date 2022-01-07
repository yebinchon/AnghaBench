
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IPMI_TIMEOUT_JIFFIES ;
 int atomic_notifier_chain_register (int *,int *) ;
 int init_srcu_struct (int *) ;
 int initialized ;
 int ipmi_interfaces_mutex ;
 int ipmi_interfaces_srcu ;
 int ipmi_register_driver () ;
 int ipmi_timeout ;
 int ipmi_timer ;
 scalar_t__ jiffies ;
 int mod_timer (int *,scalar_t__) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int panic_block ;
 int panic_notifier_list ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int ipmi_init_msghandler(void)
{
 int rv;

 mutex_lock(&ipmi_interfaces_mutex);
 rv = ipmi_register_driver();
 if (rv)
  goto out;
 if (initialized)
  goto out;

 init_srcu_struct(&ipmi_interfaces_srcu);

 timer_setup(&ipmi_timer, ipmi_timeout, 0);
 mod_timer(&ipmi_timer, jiffies + IPMI_TIMEOUT_JIFFIES);

 atomic_notifier_chain_register(&panic_notifier_list, &panic_block);

 initialized = 1;

out:
 mutex_unlock(&ipmi_interfaces_mutex);
 return rv;
}
