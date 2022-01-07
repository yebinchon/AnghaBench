
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int OPAL_MSG_OCC ;
 int opal_message_notifier_unregister (int ,int *) ;
 int powernv_cpufreq_opal_nb ;
 int powernv_cpufreq_reboot_nb ;
 int unregister_reboot_notifier (int *) ;

__attribute__((used)) static inline void unregister_all_notifiers(void)
{
 opal_message_notifier_unregister(OPAL_MSG_OCC,
      &powernv_cpufreq_opal_nb);
 unregister_reboot_notifier(&powernv_cpufreq_reboot_nb);
}
