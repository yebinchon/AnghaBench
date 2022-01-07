
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfe_ipv4_connection {int dummy; } ;
struct sfe_ipv4 {int lock; } ;
struct TYPE_4__ {int ip; } ;
struct TYPE_3__ {int ip; } ;
struct sfe_connection_create {int dest_port; TYPE_2__ dest_ip; int src_port; TYPE_1__ src_ip; int protocol; } ;


 struct sfe_ipv4 __si ;
 struct sfe_ipv4_connection* sfe_ipv4_find_sfe_ipv4_connection (struct sfe_ipv4*,int ,int ,int ,int ,int ) ;
 int sfe_ipv4_update_protocol_state (struct sfe_ipv4_connection*,struct sfe_connection_create*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv4_update_rule(struct sfe_connection_create *sic)
{
 struct sfe_ipv4_connection *c;
 struct sfe_ipv4 *si = &__si;

 spin_lock_bh(&si->lock);

 c = sfe_ipv4_find_sfe_ipv4_connection(si,
           sic->protocol,
           sic->src_ip.ip,
           sic->src_port,
           sic->dest_ip.ip,
           sic->dest_port);
 if (c != ((void*)0)) {
  sfe_ipv4_update_protocol_state(c, sic);
 }

 spin_unlock_bh(&si->lock);
}
