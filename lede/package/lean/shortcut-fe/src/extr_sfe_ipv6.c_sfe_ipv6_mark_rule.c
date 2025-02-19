
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sfe_ipv6_connection {scalar_t__ mark; } ;
struct sfe_ipv6 {int lock; } ;
struct TYPE_4__ {int ip6; } ;
struct TYPE_3__ {int ip6; } ;
struct sfe_connection_mark {scalar_t__ mark; int dest_port; TYPE_2__ dest_ip; int src_port; TYPE_1__ src_ip; int protocol; } ;


 int DEBUG_TRACE (char*,scalar_t__,scalar_t__) ;
 int WARN_ON (int) ;
 struct sfe_ipv6 __si6 ;
 struct sfe_ipv6_connection* sfe_ipv6_find_connection (struct sfe_ipv6*,int ,int ,int ,int ,int ) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

void sfe_ipv6_mark_rule(struct sfe_connection_mark *mark)
{
 struct sfe_ipv6 *si = &__si6;
 struct sfe_ipv6_connection *c;

 spin_lock_bh(&si->lock);
 c = sfe_ipv6_find_connection(si, mark->protocol,
         mark->src_ip.ip6, mark->src_port,
         mark->dest_ip.ip6, mark->dest_port);
 if (c) {
  WARN_ON((0 != c->mark) && (0 == mark->mark));
  c->mark = mark->mark;
 }
 spin_unlock_bh(&si->lock);

 if (c) {
  DEBUG_TRACE("Matching connection found for mark, "
       "setting from %08x to %08x\n",
       c->mark, mark->mark);
 }
}
