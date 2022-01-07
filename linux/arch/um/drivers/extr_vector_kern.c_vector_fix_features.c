
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_IPV6_CSUM ;
 int NETIF_F_IP_CSUM ;

__attribute__((used)) static netdev_features_t vector_fix_features(struct net_device *dev,
 netdev_features_t features)
{
 features &= ~(NETIF_F_IP_CSUM|NETIF_F_IPV6_CSUM);
 return features;
}
