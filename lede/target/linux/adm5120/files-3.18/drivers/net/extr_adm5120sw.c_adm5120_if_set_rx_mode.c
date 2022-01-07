
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct net_device {int flags; } ;
struct adm5120_if_priv {size_t vlan_no; } ;


 int CPUP_CONF_BTM ;
 int CPUP_CONF_DMCP_SHIFT ;
 int CPUP_CONF_DUNP_SHIFT ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int SWITCH_PORTS_NOCPU ;
 int SWITCH_REG_CPUP_CONF ;
 int* adm5120_eth_vlans ;
 scalar_t__ netdev_mc_count (struct net_device*) ;
 struct adm5120_if_priv* netdev_priv (struct net_device*) ;
 int sw_read_reg (int ) ;
 int sw_write_reg (int ,int) ;

__attribute__((used)) static void adm5120_if_set_rx_mode(struct net_device *dev)
{
 struct adm5120_if_priv *priv = netdev_priv(dev);
 u32 ports;
 u32 t;

 ports = adm5120_eth_vlans[priv->vlan_no] & SWITCH_PORTS_NOCPU;

 t = sw_read_reg(SWITCH_REG_CPUP_CONF);
 if (dev->flags & IFF_PROMISC)

  t &= ~(ports << CPUP_CONF_DUNP_SHIFT);
 else

  t |= (ports << CPUP_CONF_DUNP_SHIFT);

 if (dev->flags & IFF_PROMISC || dev->flags & IFF_ALLMULTI ||
     netdev_mc_count(dev))

  t &= ~(ports << CPUP_CONF_DMCP_SHIFT);
 else

  t |= (ports << CPUP_CONF_DMCP_SHIFT);
 if (~t & (SWITCH_PORTS_NOCPU << CPUP_CONF_DUNP_SHIFT))
  t |= CPUP_CONF_BTM;
 else
  t &= ~CPUP_CONF_BTM;

 sw_write_reg(SWITCH_REG_CPUP_CONF, t);

}
