
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int mce_injector_chain ;

void mce_register_injector_chain(struct notifier_block *nb)
{
 blocking_notifier_chain_register(&mce_injector_chain, nb);
}
