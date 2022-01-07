
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
struct rtable {int dummy; } ;
struct rt6_info {int dummy; } ;
struct net_device {scalar_t__ addr_len; } ;
struct neighbour {int nud_state; int ha; struct net_device* dev; } ;
struct in6_addr {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_5__ {scalar_t__ ip6; int ip; } ;
typedef TYPE_1__ sfe_ip_addr_t ;


 int DEBUG_TRACE (char*,TYPE_1__*) ;
 int IS_ERR (struct rtable*) ;
 int NUD_VALID ;
 int dev_hold (struct net_device*) ;
 struct neighbour* dst_neigh_lookup (struct dst_entry*,TYPE_1__*) ;
 int dst_release (struct dst_entry*) ;
 int init_net ;
 struct rtable* ip_route_output (int *,int ,int ,int ,int ) ;
 int memcpy (int *,int ,size_t) ;
 int neigh_release (struct neighbour*) ;
 int rcu_read_lock () ;
 int rcu_read_unlock () ;
 struct rt6_info* rt6_lookup (int *,struct in6_addr*,int ,int ,int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static bool fast_classifier_find_dev_and_mac_addr(sfe_ip_addr_t *addr, struct net_device **dev, u8 *mac_addr, bool is_v4)
{
 struct neighbour *neigh;
 struct rtable *rt;
 struct rt6_info *rt6;
 struct dst_entry *dst;
 struct net_device *mac_dev;






 if (is_v4) {
  rt = ip_route_output(&init_net, addr->ip, 0, 0, 0);
  if (unlikely(IS_ERR(rt))) {
   goto ret_fail;
  }

  dst = (struct dst_entry *)rt;
 } else {
  rt6 = rt6_lookup(&init_net, (struct in6_addr *)addr->ip6, 0, 0, 0);
  if (!rt6) {
   goto ret_fail;
  }

  dst = (struct dst_entry *)rt6;
 }

 rcu_read_lock();
 neigh = dst_neigh_lookup(dst, addr);
 if (unlikely(!neigh)) {
  rcu_read_unlock();
  dst_release(dst);
  goto ret_fail;
 }

 if (unlikely(!(neigh->nud_state & NUD_VALID))) {
  rcu_read_unlock();
  neigh_release(neigh);
  dst_release(dst);
  goto ret_fail;
 }

 mac_dev = neigh->dev;
 if (!mac_dev) {
  rcu_read_unlock();
  neigh_release(neigh);
  dst_release(dst);
  goto ret_fail;
 }

 memcpy(mac_addr, neigh->ha, (size_t)mac_dev->addr_len);

 dev_hold(mac_dev);
 *dev = mac_dev;
 rcu_read_unlock();
 neigh_release(neigh);
 dst_release(dst);

 return 1;

ret_fail:
 DEBUG_TRACE("failed to find MAC address for IP: %pIS\n", addr);

 return 0;
}
