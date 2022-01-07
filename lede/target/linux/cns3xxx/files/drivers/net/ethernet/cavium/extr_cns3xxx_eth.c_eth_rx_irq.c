
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sw {int dummy; } ;
struct net_device {int dummy; } ;
typedef int irqreturn_t ;


 int IRQ_HANDLED ;
 int eth_schedule_poll (struct sw*) ;
 struct sw* netdev_priv (struct net_device*) ;

irqreturn_t eth_rx_irq(int irq, void *pdev)
{
 struct net_device *dev = pdev;
 struct sw *sw = netdev_priv(dev);
 eth_schedule_poll(sw);
 return (IRQ_HANDLED);
}
