
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {scalar_t__ priority; } ;


 scalar_t__ MCE_PRIO_EDAC ;
 scalar_t__ MCE_PRIO_MCELOG ;
 scalar_t__ WARN_ON (int) ;
 int atomic_inc (int *) ;
 int blocking_notifier_chain_register (int *,struct notifier_block*) ;
 int num_notifiers ;
 int x86_mce_decoder_chain ;

void mce_register_decode_chain(struct notifier_block *nb)
{
 if (WARN_ON(nb->priority > MCE_PRIO_MCELOG && nb->priority < MCE_PRIO_EDAC))
  return;

 atomic_inc(&num_notifiers);

 blocking_notifier_chain_register(&x86_mce_decoder_chain, nb);
}
