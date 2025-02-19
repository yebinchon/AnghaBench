
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct net_device {int mtu; } ;
struct ag71xx {unsigned int max_frame_len; } ;


 int EBUSY ;
 int EINVAL ;
 unsigned int ag71xx_max_frame_len (int) ;
 struct ag71xx* netdev_priv (struct net_device*) ;
 scalar_t__ netif_running (struct net_device*) ;

__attribute__((used)) static int ag71xx_change_mtu(struct net_device *dev, int new_mtu)
{
 struct ag71xx *ag = netdev_priv(dev);
 unsigned int max_frame_len;

 max_frame_len = ag71xx_max_frame_len(new_mtu);
 if (new_mtu < 68 || max_frame_len > ag->max_frame_len)
  return -EINVAL;

 if (netif_running(dev))
  return -EBUSY;

 dev->mtu = new_mtu;
 return 0;
}
