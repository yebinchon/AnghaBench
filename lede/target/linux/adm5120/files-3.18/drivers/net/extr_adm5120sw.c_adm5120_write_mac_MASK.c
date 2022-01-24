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
typedef  unsigned char u32 ;
struct net_device {unsigned char* dev_addr; } ;
struct adm5120_if_priv {int vlan_no; } ;

/* Variables and functions */
 unsigned char MAC_WT0_MAC0_SHIFT ; 
 unsigned char MAC_WT0_MAC1_SHIFT ; 
 unsigned char MAC_WT0_MAWC ; 
 int MAC_WT0_MWD ; 
 unsigned char MAC_WT0_WVE ; 
 unsigned char MAC_WT1_MAC3_SHIFT ; 
 unsigned char MAC_WT1_MAC4_SHIFT ; 
 unsigned char MAC_WT1_MAC5_SHIFT ; 
 int /*<<< orphan*/  SWITCH_REG_MAC_WT0 ; 
 int /*<<< orphan*/  SWITCH_REG_MAC_WT1 ; 
 struct adm5120_if_priv* FUNC0 (struct net_device*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned char) ; 

__attribute__((used)) static void FUNC3(struct net_device *dev)
{
	struct adm5120_if_priv *priv = FUNC0(dev);
	unsigned char *mac = dev->dev_addr;
	u32 t;

	t = mac[2] | (mac[3] << MAC_WT1_MAC3_SHIFT) |
		(mac[4] << MAC_WT1_MAC4_SHIFT) | (mac[5] << MAC_WT1_MAC5_SHIFT);
	FUNC2(SWITCH_REG_MAC_WT1, t);

	t = (mac[0] << MAC_WT0_MAC0_SHIFT) | (mac[1] << MAC_WT0_MAC1_SHIFT) |
		MAC_WT0_MAWC | MAC_WT0_WVE | (priv->vlan_no<<3);

	FUNC2(SWITCH_REG_MAC_WT0, t);

	while (!(FUNC1(SWITCH_REG_MAC_WT0) & MAC_WT0_MWD))
		;
}