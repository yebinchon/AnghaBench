
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv6_connection {struct net_device* reply_dev; struct net_device* original_dev; struct sfe_ipv6_connection* all_connections_next; } ;
struct sfe_ipv6 {int lock; struct sfe_ipv6_connection* all_connections_head; } ;
struct net_device {int dummy; } ;


 int SFE_SYNC_REASON_DESTROY ;
 struct sfe_ipv6 __si6 ;
 int sfe_ipv6_flush_connection (struct sfe_ipv6*,struct sfe_ipv6_connection*,int ) ;
 int sfe_ipv6_remove_connection (struct sfe_ipv6*,struct sfe_ipv6_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv6_destroy_all_rules_for_dev(struct net_device *dev)
{
 struct sfe_ipv6 *si = &__si6;
 struct sfe_ipv6_connection *c;

another_round:
 spin_lock_bh(&si->lock);

 for (c = si->all_connections_head; c; c = c->all_connections_next) {



  if (!dev
      || (dev == c->original_dev)
      || (dev == c->reply_dev)) {
   break;
  }
 }

 if (c) {
  sfe_ipv6_remove_connection(si, c);
 }

 spin_unlock_bh(&si->lock);

 if (c) {
  sfe_ipv6_flush_connection(si, c, SFE_SYNC_REASON_DESTROY);
  goto another_round;
 }
}
