
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct platform_device {int dummy; } ;
struct net_device {int name; int dev_addr; } ;
struct adm5120_if_priv {int vlan_no; int port_mask; } ;


 int CPUP_CONF_CRCP ;
 int CPUP_CONF_DCPUP ;
 int CPUP_CONF_DMCP_SHIFT ;
 int CPUP_CONF_DUNP_SHIFT ;
 int ENOMEM ;
 int KSEG1ADDR (int ) ;
 int PHY_CNTL2_AMDIX_SHIFT ;
 int PHY_CNTL2_DC_SHIFT ;
 int PHY_CNTL2_PHYR_SHIFT ;
 int PHY_CNTL2_RMAE ;
 int PHY_CNTL2_SC_SHIFT ;
 int PHY_CNTL3_RNT ;
 int PORT_CONF0_BP_SHIFT ;
 int PORT_CONF0_EMCP_SHIFT ;
 int RX_RING_SIZE ;
 int SWITCH_INTS_ALL ;
 int SWITCH_NUM_PORTS ;
 int SWITCH_PORTS_NOCPU ;
 int SWITCH_PORTS_PHY ;
 int SWITCH_REG_CPUP_CONF ;
 int SWITCH_REG_PHY_CNTL2 ;
 int SWITCH_REG_PHY_CNTL3 ;
 int SWITCH_REG_PORT_CONF0 ;
 int SWITCH_REG_PRI_CNTL ;
 int SWITCH_REG_RHDA ;
 int SWITCH_REG_RLDA ;
 int SWITCH_REG_SHDA ;
 int SWITCH_REG_SLDA ;
 int SW_ERR (char*) ;
 int SW_INFO (char*,int ,int) ;
 int TX_RING_SIZE ;
 struct net_device** adm5120_devs ;
 int * adm5120_eth_macs ;
 int adm5120_eth_num_ports ;
 int * adm5120_eth_vlans ;
 struct net_device* adm5120_if_alloc () ;
 int adm5120_nrdevs ;
 int adm5120_set_vlan (int *) ;
 int adm5120_switch_cleanup () ;
 int adm5120_switch_rx_ring_alloc () ;
 int adm5120_switch_rx_ring_reset (int ,int ,int ) ;
 int adm5120_switch_tx_ring_alloc () ;
 int adm5120_switch_tx_ring_reset (int ,int ,int ) ;
 int adm5120_write_mac (struct net_device*) ;
 int memcpy (int ,int ,int) ;
 struct adm5120_if_priv* netdev_priv (struct net_device*) ;
 int register_netdev (struct net_device*) ;
 int rxl_descs ;
 int rxl_skbuff ;
 int sw_int_ack (int ) ;
 int sw_int_mask (int ) ;
 int sw_read_reg (int ) ;
 int sw_write_reg (int ,int) ;
 int txl_descs ;
 int txl_skbuff ;

__attribute__((used)) static int adm5120_switch_probe(struct platform_device *pdev)
{
 u32 t;
 int i, err;

 adm5120_nrdevs = adm5120_eth_num_ports;

 t = CPUP_CONF_DCPUP | CPUP_CONF_CRCP |
  SWITCH_PORTS_NOCPU << CPUP_CONF_DUNP_SHIFT |
  SWITCH_PORTS_NOCPU << CPUP_CONF_DMCP_SHIFT ;
 sw_write_reg(SWITCH_REG_CPUP_CONF, t);

 t = (SWITCH_PORTS_NOCPU << PORT_CONF0_EMCP_SHIFT) |
  (SWITCH_PORTS_NOCPU << PORT_CONF0_BP_SHIFT) |
  (SWITCH_PORTS_NOCPU);
 sw_write_reg(SWITCH_REG_PORT_CONF0, t);


 t = SWITCH_PORTS_PHY |
  (SWITCH_PORTS_PHY << PHY_CNTL2_SC_SHIFT) |
  (SWITCH_PORTS_PHY << PHY_CNTL2_DC_SHIFT) |
  (SWITCH_PORTS_PHY << PHY_CNTL2_PHYR_SHIFT) |
  (SWITCH_PORTS_PHY << PHY_CNTL2_AMDIX_SHIFT) |
  PHY_CNTL2_RMAE;
 sw_write_reg(SWITCH_REG_PHY_CNTL2, t);

 t = sw_read_reg(SWITCH_REG_PHY_CNTL3);
 t |= PHY_CNTL3_RNT;
 sw_write_reg(SWITCH_REG_PHY_CNTL3, t);


 sw_write_reg(SWITCH_REG_PRI_CNTL, 0);

 sw_int_mask(SWITCH_INTS_ALL);
 sw_int_ack(SWITCH_INTS_ALL);

 err = adm5120_switch_rx_ring_alloc();
 if (err)
  goto err;

 err = adm5120_switch_tx_ring_alloc();
 if (err)
  goto err;

 adm5120_switch_tx_ring_reset(txl_descs, txl_skbuff, TX_RING_SIZE);
 adm5120_switch_rx_ring_reset(rxl_descs, rxl_skbuff, RX_RING_SIZE);

 sw_write_reg(SWITCH_REG_SHDA, 0);
 sw_write_reg(SWITCH_REG_SLDA, KSEG1ADDR(txl_descs));
 sw_write_reg(SWITCH_REG_RHDA, 0);
 sw_write_reg(SWITCH_REG_RLDA, KSEG1ADDR(rxl_descs));

 for (i = 0; i < SWITCH_NUM_PORTS; i++) {
  struct net_device *dev;
  struct adm5120_if_priv *priv;

  dev = adm5120_if_alloc();
  if (!dev) {
   err = -ENOMEM;
   goto err;
  }

  adm5120_devs[i] = dev;
  priv = netdev_priv(dev);

  priv->vlan_no = i;
  priv->port_mask = adm5120_eth_vlans[i];

  memcpy(dev->dev_addr, adm5120_eth_macs[i], 6);
  adm5120_write_mac(dev);

  err = register_netdev(dev);
  if (err) {
   SW_INFO("%s register failed, error=%d\n",
     dev->name, err);
   goto err;
  }
 }


 adm5120_set_vlan(adm5120_eth_vlans);


 t = sw_read_reg(SWITCH_REG_CPUP_CONF);
 t &= ~CPUP_CONF_DCPUP;
 sw_write_reg(SWITCH_REG_CPUP_CONF, t);

 return 0;

err:
 adm5120_switch_cleanup();

 SW_ERR("init failed\n");
 return err;
}
