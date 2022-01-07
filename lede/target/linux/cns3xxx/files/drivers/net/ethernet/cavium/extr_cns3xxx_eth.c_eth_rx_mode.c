
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sw {TYPE_1__* regs; } ;
struct port {int id; struct sw* sw; } ;
struct net_device {int flags; } ;
struct TYPE_2__ {int mac_glob_cfg; } ;


 int IFF_PROMISC ;
 int PROMISC_OFFSET ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 struct port* netdev_priv (struct net_device*) ;

__attribute__((used)) static void eth_rx_mode(struct net_device *dev)
{
 struct port *port = netdev_priv(dev);
 struct sw *sw = port->sw;
 u32 temp;

 temp = __raw_readl(&sw->regs->mac_glob_cfg);

 if (dev->flags & IFF_PROMISC) {
  if (port->id == 3)
   temp |= ((1 << 2) << PROMISC_OFFSET);
  else
   temp |= ((1 << port->id) << PROMISC_OFFSET);
 } else {
  if (port->id == 3)
   temp &= ~((1 << 2) << PROMISC_OFFSET);
  else
   temp &= ~((1 << port->id) << PROMISC_OFFSET);
 }
 __raw_writel(temp, &sw->regs->mac_glob_cfg);
}
