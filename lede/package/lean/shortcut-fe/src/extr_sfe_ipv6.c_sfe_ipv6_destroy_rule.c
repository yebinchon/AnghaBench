
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfe_ipv6_connection {int dummy; } ;
struct sfe_ipv6 {int lock; int connection_destroy_misses; int connection_destroy_requests; } ;
struct TYPE_4__ {int ip6; } ;
struct TYPE_3__ {int ip6; } ;
struct sfe_connection_destroy {int dest_port; TYPE_2__ dest_ip; int src_port; TYPE_1__ src_ip; int protocol; } ;


 int DEBUG_INFO (char*,int ,int ,int ,int ,int ) ;
 int DEBUG_TRACE (char*,int ,int ,int ,int ,int ) ;
 int SFE_SYNC_REASON_DESTROY ;
 struct sfe_ipv6 __si6 ;
 int ntohs (int ) ;
 struct sfe_ipv6_connection* sfe_ipv6_find_connection (struct sfe_ipv6*,int ,int ,int ,int ,int ) ;
 int sfe_ipv6_flush_connection (struct sfe_ipv6*,struct sfe_ipv6_connection*,int ) ;
 int sfe_ipv6_remove_connection (struct sfe_ipv6*,struct sfe_ipv6_connection*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv6_destroy_rule(struct sfe_connection_destroy *sid)
{
 struct sfe_ipv6 *si = &__si6;
 struct sfe_ipv6_connection *c;

 spin_lock_bh(&si->lock);
 si->connection_destroy_requests++;





 c = sfe_ipv6_find_connection(si, sid->protocol, sid->src_ip.ip6, sid->src_port,
         sid->dest_ip.ip6, sid->dest_port);
 if (!c) {
  si->connection_destroy_misses++;
  spin_unlock_bh(&si->lock);

  DEBUG_TRACE("connection does not exist - p: %d, s: %pI6:%u, d: %pI6:%u\n",
       sid->protocol, sid->src_ip.ip6, ntohs(sid->src_port),
       sid->dest_ip.ip6, ntohs(sid->dest_port));
  return;
 }




 sfe_ipv6_remove_connection(si, c);
 spin_unlock_bh(&si->lock);

 sfe_ipv6_flush_connection(si, c, SFE_SYNC_REASON_DESTROY);

 DEBUG_INFO("connection destroyed - p: %d, s: %pI6:%u, d: %pI6:%u\n",
     sid->protocol, sid->src_ip.ip6, ntohs(sid->src_port),
     sid->dest_ip.ip6, ntohs(sid->dest_port));
}
