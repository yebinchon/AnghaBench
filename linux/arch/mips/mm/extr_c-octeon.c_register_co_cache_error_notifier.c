
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int co_cache_error_chain ;
 int raw_notifier_chain_register (int *,struct notifier_block*) ;

int register_co_cache_error_notifier(struct notifier_block *nb)
{
 return raw_notifier_chain_register(&co_cache_error_chain, nb);
}
