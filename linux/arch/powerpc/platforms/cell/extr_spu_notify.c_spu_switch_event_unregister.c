
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int blocking_notifier_chain_unregister (int *,struct notifier_block*) ;
 int spu_switch_notifier ;

int spu_switch_event_unregister(struct notifier_block *n)
{
 return blocking_notifier_chain_unregister(&spu_switch_notifier, n);
}
