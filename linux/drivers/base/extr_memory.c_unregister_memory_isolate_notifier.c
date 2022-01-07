
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int atomic_notifier_chain_unregister (int *,struct notifier_block*) ;
 int memory_isolate_chain ;

void unregister_memory_isolate_notifier(struct notifier_block *nb)
{
 atomic_notifier_chain_unregister(&memory_isolate_chain, nb);
}
