
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct notifier_block {int notifier_call; struct notifier_block* next; } ;
struct TYPE_2__ {int mutex; struct notifier_block* head; } ;


 TYPE_1__ cpufreq_transition_notifier_list ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int pr_info (char*,...) ;

__attribute__((used)) static void cpufreq_list_transition_notifiers(void)
{
 struct notifier_block *nb;

 pr_info("Registered transition notifiers:\n");

 mutex_lock(&cpufreq_transition_notifier_list.mutex);

 for (nb = cpufreq_transition_notifier_list.head; nb; nb = nb->next)
  pr_info("%pS\n", nb->notifier_call);

 mutex_unlock(&cpufreq_transition_notifier_list.mutex);
}
