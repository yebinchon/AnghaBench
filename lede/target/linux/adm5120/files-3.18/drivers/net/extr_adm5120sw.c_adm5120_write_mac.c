
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char u32 ;
struct net_device {unsigned char* dev_addr; } ;
struct adm5120_if_priv {int vlan_no; } ;


 unsigned char MAC_WT0_MAC0_SHIFT ;
 unsigned char MAC_WT0_MAC1_SHIFT ;
 unsigned char MAC_WT0_MAWC ;
 int MAC_WT0_MWD ;
 unsigned char MAC_WT0_WVE ;
 unsigned char MAC_WT1_MAC3_SHIFT ;
 unsigned char MAC_WT1_MAC4_SHIFT ;
 unsigned char MAC_WT1_MAC5_SHIFT ;
 int SWITCH_REG_MAC_WT0 ;
 int SWITCH_REG_MAC_WT1 ;
 struct adm5120_if_priv* netdev_priv (struct net_device*) ;
 int sw_read_reg (int ) ;
 int sw_write_reg (int ,unsigned char) ;

__attribute__((used)) static void adm5120_write_mac(struct net_device *dev)
{
 struct adm5120_if_priv *priv = netdev_priv(dev);
 unsigned char *mac = dev->dev_addr;
 u32 t;

 t = mac[2] | (mac[3] << MAC_WT1_MAC3_SHIFT) |
  (mac[4] << MAC_WT1_MAC4_SHIFT) | (mac[5] << MAC_WT1_MAC5_SHIFT);
 sw_write_reg(SWITCH_REG_MAC_WT1, t);

 t = (mac[0] << MAC_WT0_MAC0_SHIFT) | (mac[1] << MAC_WT0_MAC1_SHIFT) |
  MAC_WT0_MAWC | MAC_WT0_WVE | (priv->vlan_no<<3);

 sw_write_reg(SWITCH_REG_MAC_WT0, t);

 while (!(sw_read_reg(SWITCH_REG_MAC_WT0) & MAC_WT0_MWD))
  ;
}
