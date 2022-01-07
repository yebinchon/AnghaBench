
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct vector_private {int estats; } ;
struct vector_estats {int dummy; } ;
struct net_device {int dummy; } ;
struct ethtool_stats {int dummy; } ;


 int memcpy (int *,int *,int) ;
 struct vector_private* netdev_priv (struct net_device*) ;

__attribute__((used)) static void vector_get_ethtool_stats(struct net_device *dev,
 struct ethtool_stats *estats,
 u64 *tmp_stats)
{
 struct vector_private *vp = netdev_priv(dev);

 memcpy(tmp_stats, &vp->estats, sizeof(struct vector_estats));
}
