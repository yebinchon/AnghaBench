
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int req_size; int max_packet; int headroom; } ;
struct net_device {int dummy; } ;
typedef int netdev_features_t ;


 int NETIF_F_GRO ;
 int SAFETY_MARGIN ;
 struct vector_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static int vector_set_features(struct net_device *dev,
 netdev_features_t features)
{
 struct vector_private *vp = netdev_priv(dev);




 if (features & NETIF_F_GRO)

  vp->req_size = 65536;
 else

  vp->req_size = vp->max_packet + vp->headroom + SAFETY_MARGIN;
 return 0;
}
