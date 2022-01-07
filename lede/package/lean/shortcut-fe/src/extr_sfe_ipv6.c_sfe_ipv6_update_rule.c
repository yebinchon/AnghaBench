
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfe_ipv6_connection {int dummy; } ;
struct sfe_ipv6 {int lock; } ;
struct TYPE_4__ {int ip6; } ;
struct TYPE_3__ {int ip6; } ;
struct sfe_connection_create {int dest_port; TYPE_2__ dest_ip; int src_port; TYPE_1__ src_ip; int protocol; } ;


 struct sfe_ipv6 __si6 ;
 struct sfe_ipv6_connection* sfe_ipv6_find_connection (struct sfe_ipv6*,int ,int ,int ,int ,int ) ;
 int sfe_ipv6_update_protocol_state (struct sfe_ipv6_connection*,struct sfe_connection_create*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv6_update_rule(struct sfe_connection_create *sic)
{
 struct sfe_ipv6_connection *c;
 struct sfe_ipv6 *si = &__si6;

 spin_lock_bh(&si->lock);

 c = sfe_ipv6_find_connection(si,
         sic->protocol,
         sic->src_ip.ip6,
         sic->src_port,
         sic->dest_ip.ip6,
         sic->dest_port);
 if (c != ((void*)0)) {
  sfe_ipv6_update_protocol_state(c, sic);
 }

 spin_unlock_bh(&si->lock);
}
