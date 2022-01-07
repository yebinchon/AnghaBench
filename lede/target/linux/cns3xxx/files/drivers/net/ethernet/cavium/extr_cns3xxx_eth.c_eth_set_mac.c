
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct sw {TYPE_1__* regs; } ;
struct sockaddr {int* sa_data; } ;
struct port {int id; struct sw* sw; } ;
struct net_device {int* dev_addr; int addr_len; } ;
struct TYPE_2__ {int arl_vlan_cmd; int * arl_ctrl; } ;


 int EADDRNOTAVAIL ;
 int __raw_readl (int *) ;
 int __raw_writel (int,int *) ;
 int is_valid_ether_addr (int*) ;
 int memcpy (int*,int*,int ) ;
 struct port* netdev_priv (struct net_device*) ;
 int udelay (int) ;

__attribute__((used)) static int eth_set_mac(struct net_device *netdev, void *p)
{
 struct port *port = netdev_priv(netdev);
 struct sw *sw = port->sw;
 struct sockaddr *addr = p;
 u32 cycles = 0;

 if (!is_valid_ether_addr(addr->sa_data))
  return -EADDRNOTAVAIL;


 if (port->id == 3)
  __raw_writel((port->id << 16) | (0x4 << 9), &sw->regs->arl_ctrl[0]);
 else
  __raw_writel(((port->id + 1) << 16) | (0x4 << 9), &sw->regs->arl_ctrl[0]);
 __raw_writel( ((netdev->dev_addr[0] << 24) | (netdev->dev_addr[1] << 16) |
   (netdev->dev_addr[2] << 8) | (netdev->dev_addr[3])),
   &sw->regs->arl_ctrl[1]);

 __raw_writel( ((netdev->dev_addr[4] << 24) | (netdev->dev_addr[5] << 16) |
   (1 << 1)),
   &sw->regs->arl_ctrl[2]);
 __raw_writel((1 << 19), &sw->regs->arl_vlan_cmd);

 while (((__raw_readl(&sw->regs->arl_vlan_cmd) & (1 << 21)) == 0)
   && cycles < 5000) {
  udelay(1);
  cycles++;
 }

 cycles = 0;
 memcpy(netdev->dev_addr, addr->sa_data, netdev->addr_len);

 if (port->id == 3)
  __raw_writel((port->id << 16) | (0x4 << 9), &sw->regs->arl_ctrl[0]);
 else
  __raw_writel(((port->id + 1) << 16) | (0x4 << 9), &sw->regs->arl_ctrl[0]);
 __raw_writel( ((addr->sa_data[0] << 24) | (addr->sa_data[1] << 16) |
   (addr->sa_data[2] << 8) | (addr->sa_data[3])),
   &sw->regs->arl_ctrl[1]);

 __raw_writel( ((addr->sa_data[4] << 24) | (addr->sa_data[5] << 16) |
   (7 << 4) | (1 << 1)), &sw->regs->arl_ctrl[2]);
 __raw_writel((1 << 19), &sw->regs->arl_vlan_cmd);

 while (((__raw_readl(&sw->regs->arl_vlan_cmd) & (1 << 21)) == 0)
  && cycles < 5000) {
  udelay(1);
  cycles++;
 }
 return 0;
}
