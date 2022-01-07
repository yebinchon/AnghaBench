
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vector_private {int tx_poll; scalar_t__ in_write_poll; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int IRQ_NONE ;
 struct vector_private* netdev_priv (struct net_device*) ;
 int netif_running (struct net_device*) ;
 int tasklet_schedule (int *) ;

__attribute__((used)) static irqreturn_t vector_tx_interrupt(int irq, void *dev_id)
{
 struct net_device *dev = dev_id;
 struct vector_private *vp = netdev_priv(dev);

 if (!netif_running(dev))
  return IRQ_NONE;







 if (vp->in_write_poll)
  tasklet_schedule(&vp->tx_poll);
 return IRQ_HANDLED;

}
