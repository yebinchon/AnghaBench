
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct notifier_block {int dummy; } ;


 int co_cache_error_chain ;
 int raw_notifier_chain_unregister (int *,struct notifier_block*) ;

int unregister_co_cache_error_notifier(struct notifier_block *nb)
{
 return raw_notifier_chain_unregister(&co_cache_error_chain, nb);
}
