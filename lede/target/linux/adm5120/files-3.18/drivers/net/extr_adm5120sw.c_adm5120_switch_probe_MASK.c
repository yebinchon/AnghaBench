#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int u32 ;
struct platform_device {int dummy; } ;
struct net_device {int /*<<< orphan*/  name; int /*<<< orphan*/  dev_addr; } ;
struct adm5120_if_priv {int vlan_no; int /*<<< orphan*/  port_mask; } ;

/* Variables and functions */
 int CPUP_CONF_CRCP ; 
 int CPUP_CONF_DCPUP ; 
 int CPUP_CONF_DMCP_SHIFT ; 
 int CPUP_CONF_DUNP_SHIFT ; 
 int ENOMEM ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int PHY_CNTL2_AMDIX_SHIFT ; 
 int PHY_CNTL2_DC_SHIFT ; 
 int PHY_CNTL2_PHYR_SHIFT ; 
 int PHY_CNTL2_RMAE ; 
 int PHY_CNTL2_SC_SHIFT ; 
 int PHY_CNTL3_RNT ; 
 int PORT_CONF0_BP_SHIFT ; 
 int PORT_CONF0_EMCP_SHIFT ; 
 int /*<<< orphan*/  RX_RING_SIZE ; 
 int /*<<< orphan*/  SWITCH_INTS_ALL ; 
 int SWITCH_NUM_PORTS ; 
 int SWITCH_PORTS_NOCPU ; 
 int SWITCH_PORTS_PHY ; 
 int /*<<< orphan*/  SWITCH_REG_CPUP_CONF ; 
 int /*<<< orphan*/  SWITCH_REG_PHY_CNTL2 ; 
 int /*<<< orphan*/  SWITCH_REG_PHY_CNTL3 ; 
 int /*<<< orphan*/  SWITCH_REG_PORT_CONF0 ; 
 int /*<<< orphan*/  SWITCH_REG_PRI_CNTL ; 
 int /*<<< orphan*/  SWITCH_REG_RHDA ; 
 int /*<<< orphan*/  SWITCH_REG_RLDA ; 
 int /*<<< orphan*/  SWITCH_REG_SHDA ; 
 int /*<<< orphan*/  SWITCH_REG_SLDA ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  TX_RING_SIZE ; 
 struct net_device** adm5120_devs ; 
 int /*<<< orphan*/ * adm5120_eth_macs ; 
 int /*<<< orphan*/  adm5120_eth_num_ports ; 
 int /*<<< orphan*/ * adm5120_eth_vlans ; 
 struct net_device* FUNC3 () ; 
 int /*<<< orphan*/  adm5120_nrdevs ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct adm5120_if_priv* FUNC12 (struct net_device*) ; 
 int FUNC13 (struct net_device*) ; 
 int /*<<< orphan*/  rxl_descs ; 
 int /*<<< orphan*/  rxl_skbuff ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  txl_descs ; 
 int /*<<< orphan*/  txl_skbuff ; 

__attribute__((used)) static int FUNC18(struct platform_device *pdev)
{
	u32 t;
	int i, err;

	adm5120_nrdevs = adm5120_eth_num_ports;

	t = CPUP_CONF_DCPUP | CPUP_CONF_CRCP |
		SWITCH_PORTS_NOCPU << CPUP_CONF_DUNP_SHIFT |
		SWITCH_PORTS_NOCPU << CPUP_CONF_DMCP_SHIFT ;
	FUNC17(SWITCH_REG_CPUP_CONF, t);

	t = (SWITCH_PORTS_NOCPU << PORT_CONF0_EMCP_SHIFT) |
		(SWITCH_PORTS_NOCPU << PORT_CONF0_BP_SHIFT) |
		(SWITCH_PORTS_NOCPU);
	FUNC17(SWITCH_REG_PORT_CONF0, t);

	/* setup ports to Autoneg/100M/Full duplex/Auto MDIX */
	t =  SWITCH_PORTS_PHY |
		(SWITCH_PORTS_PHY << PHY_CNTL2_SC_SHIFT) |
		(SWITCH_PORTS_PHY << PHY_CNTL2_DC_SHIFT) |
		(SWITCH_PORTS_PHY << PHY_CNTL2_PHYR_SHIFT) |
		(SWITCH_PORTS_PHY << PHY_CNTL2_AMDIX_SHIFT) |
		PHY_CNTL2_RMAE;
	FUNC17(SWITCH_REG_PHY_CNTL2, t);

	t = FUNC16(SWITCH_REG_PHY_CNTL3);
	t |= PHY_CNTL3_RNT;
	FUNC17(SWITCH_REG_PHY_CNTL3, t);

	/* Force all the packets from all ports are low priority */
	FUNC17(SWITCH_REG_PRI_CNTL, 0);

	FUNC15(SWITCH_INTS_ALL);
	FUNC14(SWITCH_INTS_ALL);

	err = FUNC6();
	if (err)
		goto err;

	err = FUNC8();
	if (err)
		goto err;

	FUNC9(txl_descs, txl_skbuff, TX_RING_SIZE);
	FUNC7(rxl_descs, rxl_skbuff, RX_RING_SIZE);

	FUNC17(SWITCH_REG_SHDA, 0);
	FUNC17(SWITCH_REG_SLDA, FUNC0(txl_descs));
	FUNC17(SWITCH_REG_RHDA, 0);
	FUNC17(SWITCH_REG_RLDA, FUNC0(rxl_descs));

	for (i = 0; i < SWITCH_NUM_PORTS; i++) {
		struct net_device *dev;
		struct adm5120_if_priv *priv;

		dev = FUNC3();
		if (!dev) {
			err = -ENOMEM;
			goto err;
		}

		adm5120_devs[i] = dev;
		priv = FUNC12(dev);

		priv->vlan_no = i;
		priv->port_mask = adm5120_eth_vlans[i];

		FUNC11(dev->dev_addr, adm5120_eth_macs[i], 6);
		FUNC10(dev);

		err = FUNC13(dev);
		if (err) {
			FUNC2("%s register failed, error=%d\n",
					dev->name, err);
			goto err;
		}
	}

	/* setup vlan/port mapping after devs are filled up */
	FUNC4(adm5120_eth_vlans);

	/* enable CPU port */
	t = FUNC16(SWITCH_REG_CPUP_CONF);
	t &= ~CPUP_CONF_DCPUP;
	FUNC17(SWITCH_REG_CPUP_CONF, t);

	return 0;

err:
	FUNC5();

	FUNC1("init failed\n");
	return err;
}