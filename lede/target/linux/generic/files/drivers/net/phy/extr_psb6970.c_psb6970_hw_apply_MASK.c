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
typedef  int u8 ;
struct switch_dev {int dummy; } ;
struct psb6970_priv {int* vlan_table; int* vlan_id; int vlan_tagged; size_t* pvid; int /*<<< orphan*/  reg_mutex; int /*<<< orphan*/  phy; int /*<<< orphan*/  (* write ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ;scalar_t__ vlan; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int PSB6970_EC_IFNTE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int PSB6970_MAX_VLANS ; 
 int PSB6970_NUM_PORTS ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int PSB6970_PBVM_AOVTP ; 
 int PSB6970_PBVM_TBVE ; 
 int PSB6970_PBVM_VC ; 
 int PSB6970_PBVM_VMCE ; 
 int PSB6970_PBVM_VSD ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int PSB6970_VFxH_TM_SHIFT ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int PSB6970_VFxL_VV ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 struct psb6970_priv* FUNC14 (struct switch_dev*) ; 

__attribute__((used)) static int FUNC15(struct switch_dev *dev)
{
	struct psb6970_priv *priv = FUNC14(dev);
	int i, j;

	FUNC6(&priv->reg_mutex);

	if (priv->vlan) {
		/* into the vlan translation unit */
		for (j = 0; j < PSB6970_MAX_VLANS; j++) {
			u8 vp = priv->vlan_table[j];

			if (vp) {
				priv->write(priv->phy, FUNC5(j),
					    PSB6970_VFxL_VV | priv->vlan_id[j]);
				priv->write(priv->phy, FUNC4(j),
					    ((vp & priv->
					      vlan_tagged) <<
					     PSB6970_VFxH_TM_SHIFT) | vp);
			} else	/* clear VLAN Valid flag for unused vlans */
				priv->write(priv->phy, FUNC5(j), 0);

		}
	}

	/* update the port destination mask registers and tag settings */
	for (i = 0; i < PSB6970_NUM_PORTS; i++) {
		int dvid = 1, pbvm = 0x7f | PSB6970_PBVM_VSD, ec = 0;

		if (priv->vlan) {
			ec = PSB6970_EC_IFNTE;
			dvid = priv->vlan_id[priv->pvid[i]];
			pbvm |= PSB6970_PBVM_TBVE | PSB6970_PBVM_VMCE;

			if ((i << 1) & priv->vlan_tagged)
				pbvm |= PSB6970_PBVM_AOVTP | PSB6970_PBVM_VC;
		}

		priv->write(priv->phy, FUNC3(i), pbvm);

		if (!FUNC2(i)) {
			priv->write(priv->phy, FUNC1(i), ec);
			priv->write(priv->phy, FUNC0(i), dvid);
		}
	}

	FUNC7(&priv->reg_mutex);
	return 0;
}