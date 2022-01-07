
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int bL_activation_notifier ;
 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;

int bL_switcher_unregister_notifier(struct notifier_block *nb)
{
 return blocking_notifier_chain_unregister(&bL_activation_notifier, nb);
}
