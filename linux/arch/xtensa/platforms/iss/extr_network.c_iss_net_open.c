
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct net_device {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct iss_net_private*) ;} ;
struct iss_net_private {int lock; scalar_t__ timer_val; int timer; int opened_list; TYPE_1__ tp; } ;


 scalar_t__ ISS_NET_TIMER_VALUE ;
 int iss_net_rx (struct net_device*) ;
 int iss_net_timer ;
 scalar_t__ jiffies ;
 int list_add (int *,int *) ;
 int mod_timer (int *,scalar_t__) ;
 struct iss_net_private* netdev_priv (struct net_device*) ;
 int netif_start_queue (struct net_device*) ;
 int opened ;
 int opened_lock ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int stub1 (struct iss_net_private*) ;
 int timer_setup (int *,int ,int ) ;

__attribute__((used)) static int iss_net_open(struct net_device *dev)
{
 struct iss_net_private *lp = netdev_priv(dev);
 int err;

 spin_lock_bh(&lp->lock);

 err = lp->tp.open(lp);
 if (err < 0)
  goto out;

 netif_start_queue(dev);





 while ((err = iss_net_rx(dev)) > 0)
  ;

 spin_unlock_bh(&lp->lock);
 spin_lock_bh(&opened_lock);
 list_add(&lp->opened_list, &opened);
 spin_unlock_bh(&opened_lock);
 spin_lock_bh(&lp->lock);

 timer_setup(&lp->timer, iss_net_timer, 0);
 lp->timer_val = ISS_NET_TIMER_VALUE;
 mod_timer(&lp->timer, jiffies + lp->timer_val);

out:
 spin_unlock_bh(&lp->lock);
 return err;
}
