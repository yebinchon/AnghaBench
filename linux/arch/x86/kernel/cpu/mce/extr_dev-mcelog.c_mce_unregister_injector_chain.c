
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int mce_injector_chain ;

void mce_unregister_injector_chain(struct notifier_block *nb)
{
 blocking_notifier_chain_unregister(&mce_injector_chain, nb);
}
