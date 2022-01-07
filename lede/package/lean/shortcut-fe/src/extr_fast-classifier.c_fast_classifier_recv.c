
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int tc_verd; scalar_t__ protocol; struct net_device* dev; scalar_t__ data; } ;
struct net_device {int priv_flags; int name; scalar_t__ ip6_ptr; scalar_t__ ip_ptr; scalar_t__ ingress_queue; } ;
struct inet6_dev {int addr_list; } ;
struct in_device {int ifa_list; } ;


 int DEBUG_TRACE (char*,...) ;
 int DEBUG_WARN (char*) ;
 int ETH_P_IP ;
 int ETH_P_IPV6 ;
 int IFF_BRIDGE_PORT ;
 int TC_NCLS ;
 int barrier () ;
 int dev_put (struct net_device*) ;
 scalar_t__ htons (int ) ;
 scalar_t__ likely (int) ;
 int list_empty (int *) ;
 int prefetch (scalar_t__) ;
 struct net_device* sfe_dev_get_master (struct net_device*) ;
 int sfe_ipv4_recv (struct net_device*,struct sk_buff*) ;
 int sfe_ipv6_recv (struct net_device*,struct sk_buff*) ;
 scalar_t__ skip_to_bridge_ingress ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static int fast_classifier_recv(struct sk_buff *skb)
{
 struct net_device *dev;
 struct net_device *master_dev = ((void*)0);
 int ret = 0;





 prefetch(skb->data + 32);
 barrier();

 dev = skb->dev;




 if (skip_to_bridge_ingress &&
     (dev->priv_flags & IFF_BRIDGE_PORT)) {
  master_dev = sfe_dev_get_master(dev);
  if (!master_dev) {
   DEBUG_WARN("master dev is NULL %s\n");
   goto rx_exit;
  }
  dev = master_dev;
 }
 if (likely(htons(ETH_P_IP) == skb->protocol)) {
  struct in_device *in_dev;




  in_dev = (struct in_device *)dev->ip_ptr;
  if (unlikely(!in_dev)) {
   DEBUG_TRACE("no IP processing for device: %s\n", dev->name);
   goto rx_exit;
  }





  if (unlikely(!in_dev->ifa_list)) {
   DEBUG_TRACE("no IP address for device: %s\n", dev->name);
   goto rx_exit;
  }

  ret = sfe_ipv4_recv(dev, skb);

 } else if (likely(htons(ETH_P_IPV6) == skb->protocol)) {
  struct inet6_dev *in_dev;




  in_dev = (struct inet6_dev *)dev->ip6_ptr;
  if (unlikely(!in_dev)) {
   DEBUG_TRACE("no IPv6 processing for device: %s\n", dev->name);
   goto rx_exit;
  }





  if (unlikely(list_empty(&in_dev->addr_list))) {
   DEBUG_TRACE("no IPv6 address for device: %s\n", dev->name);
   goto rx_exit;
  }

  ret = sfe_ipv6_recv(dev, skb);

 } else {
  DEBUG_TRACE("not IP packet\n");
 }

rx_exit:
 if (master_dev) {
  dev_put(master_dev);
 }

 return ret;
}
