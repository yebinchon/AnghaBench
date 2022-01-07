
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6 {int lock; int sync_rule_callback; } ;
typedef int sfe_sync_rule_callback_t ;


 struct sfe_ipv6 __si6 ;
 int rcu_assign_pointer (int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv6_register_sync_rule_callback(sfe_sync_rule_callback_t sync_rule_callback)
{
 struct sfe_ipv6 *si = &__si6;

 spin_lock_bh(&si->lock);
 rcu_assign_pointer(si->sync_rule_callback, sync_rule_callback);
 spin_unlock_bh(&si->lock);
}
