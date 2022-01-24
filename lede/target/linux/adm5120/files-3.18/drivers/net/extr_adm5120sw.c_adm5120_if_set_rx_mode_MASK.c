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
struct net_device {int flags; } ;
struct adm5120_if_priv {size_t vlan_no; } ;

/* Variables and functions */
 int CPUP_CONF_BTM ; 
 int CPUP_CONF_DMCP_SHIFT ; 
 int CPUP_CONF_DUNP_SHIFT ; 
 int IFF_ALLMULTI ; 
 int IFF_PROMISC ; 
 int SWITCH_PORTS_NOCPU ; 
 int /*<<< orphan*/  SWITCH_REG_CPUP_CONF ; 
 int* adm5120_eth_vlans ; 
 scalar_t__ FUNC0 (struct net_device*) ; 
 struct adm5120_if_priv* FUNC1 (struct net_device*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(struct net_device *dev)
{
	struct adm5120_if_priv *priv = FUNC1(dev);
	u32 ports;
	u32 t;

	ports = adm5120_eth_vlans[priv->vlan_no] & SWITCH_PORTS_NOCPU;

	t = FUNC2(SWITCH_REG_CPUP_CONF);
	if (dev->flags & IFF_PROMISC)
		/* enable unknown packets */
		t &= ~(ports << CPUP_CONF_DUNP_SHIFT);
	else
		/* disable unknown packets */
		t |= (ports << CPUP_CONF_DUNP_SHIFT);

	if (dev->flags & IFF_PROMISC || dev->flags & IFF_ALLMULTI ||
					FUNC0(dev))
		/* enable multicast packets */
		t &= ~(ports << CPUP_CONF_DMCP_SHIFT);
	else
		/* disable multicast packets */
		t |= (ports << CPUP_CONF_DMCP_SHIFT);

	/* If there is any port configured to be in promiscuous mode, then the */
	/* Bridge Test Mode has to be activated. This will result in           */
	/* transporting also packets learned in another VLAN to be forwarded   */
	/* to the CPU.                                                         */
	/* The difficult scenario is when we want to build a bridge on the CPU.*/
	/* Assume we have port0 and the CPU port in VLAN0 and port1 and the    */
	/* CPU port in VLAN1. Now we build a bridge on the CPU between         */
	/* VLAN0 and VLAN1. Both ports of the VLANs are set in promisc mode.   */
	/* Now assume a packet with ethernet source address 99 enters port 0   */
	/* It will be forwarded to the CPU because it is unknown. Then the     */
	/* bridge in the CPU will send it to VLAN1 and it goes out at port 1.  */
	/* When now a packet with ethernet destination address 99 comes in at  */
	/* port 1 in VLAN1, then the switch has learned that this address is   */
	/* located at port 0 in VLAN0. Therefore the switch will drop          */
	/* this packet. In order to avoid this and to send the packet still    */
	/* to the CPU, the Bridge Test Mode has to be activated.               */

	/* Check if there is any vlan in promisc mode. */
	if (~t & (SWITCH_PORTS_NOCPU << CPUP_CONF_DUNP_SHIFT))
		t |= CPUP_CONF_BTM;  /* Enable Bridge Testing Mode */
	else
		t &= ~CPUP_CONF_BTM; /* Disable Bridge Testing Mode */

	FUNC3(SWITCH_REG_CPUP_CONF, t);

}