
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sfe_ipv4_connection {struct net_device* reply_dev; struct net_device* original_dev; struct sfe_ipv4_connection* all_connections_next; } ;
struct sfe_ipv4 {int lock; struct sfe_ipv4_connection* all_connections_head; } ;
struct net_device {int dummy; } ;


 int SFE_SYNC_REASON_DESTROY ;
 struct sfe_ipv4 __si ;
 int sfe_ipv4_flush_sfe_ipv4_connection (struct sfe_ipv4*,struct sfe_ipv4_connection*,int ) ;
 int sfe_ipv4_remove_sfe_ipv4_connection (struct sfe_ipv4*,struct sfe_ipv4_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv4_destroy_all_rules_for_dev(struct net_device *dev)
{
 struct sfe_ipv4 *si = &__si;
 struct sfe_ipv4_connection *c;

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
  sfe_ipv4_remove_sfe_ipv4_connection(si, c);
 }

 spin_unlock_bh(&si->lock);

 if (c) {
  sfe_ipv4_flush_sfe_ipv4_connection(si, c, SFE_SYNC_REASON_DESTROY);
  goto another_round;
 }
}
