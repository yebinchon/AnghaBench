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
typedef  int u16 ;
struct net_device {int features; int wanted_features; } ;
struct fe_priv {int /*<<< orphan*/  vlan_map; } ;
typedef  int /*<<< orphan*/  __be16 ;

/* Variables and functions */
 size_t FE_REG_FE_DMA_VID_BASE ; 
 int NETIF_F_HW_VLAN_CTAG_TX ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__* fe_reg_table ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__) ; 
 struct fe_priv* FUNC2 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC3 (struct net_device*) ; 
 int /*<<< orphan*/  FUNC4 (struct net_device*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct net_device *dev,
			      __be16 proto, u16 vid)
{
	struct fe_priv *priv = FUNC2(dev);
	u32 idx = (vid & 0xf);
	u32 vlan_cfg;

	if (!((fe_reg_table[FE_REG_FE_DMA_VID_BASE]) &&
	      (dev->features & NETIF_F_HW_VLAN_CTAG_TX)))
		return 0;

	if (FUNC6(idx, &priv->vlan_map)) {
		FUNC4(dev, "disable tx vlan offload\n");
		dev->wanted_features &= ~NETIF_F_HW_VLAN_CTAG_TX;
		FUNC3(dev);
	} else {
		vlan_cfg = FUNC0(fe_reg_table[FE_REG_FE_DMA_VID_BASE] +
				((idx >> 1) << 2));
		if (idx & 0x1) {
			vlan_cfg &= 0xffff;
			vlan_cfg |= (vid << 16);
		} else {
			vlan_cfg &= 0xffff0000;
			vlan_cfg |= vid;
		}
		FUNC1(vlan_cfg, fe_reg_table[FE_REG_FE_DMA_VID_BASE] +
				((idx >> 1) << 2));
		FUNC5(idx, &priv->vlan_map);
	}

	return 0;
}