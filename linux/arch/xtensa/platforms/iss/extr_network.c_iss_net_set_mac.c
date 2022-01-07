
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr {int sa_data; } ;
struct net_device {int dev_addr; } ;
struct iss_net_private {int lock; } ;


 int EADDRNOTAVAIL ;
 int ETH_ALEN ;
 int is_valid_ether_addr (int ) ;
 int memcpy (int ,int ,int ) ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static int iss_net_set_mac(struct net_device *dev, void *addr)
{
 struct iss_net_private *lp = netdev_priv(dev);
 struct sockaddr *hwaddr = addr;

 if (!is_valid_ether_addr(hwaddr->sa_data))
  return -EADDRNOTAVAIL;
 spin_lock_bh(&lp->lock);
 memcpy(dev->dev_addr, hwaddr->sa_data, ETH_ALEN);
 spin_unlock_bh(&lp->lock);
 return 0;
}
