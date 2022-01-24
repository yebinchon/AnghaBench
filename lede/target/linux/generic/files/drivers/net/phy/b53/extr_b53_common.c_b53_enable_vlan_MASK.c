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
struct b53_device {scalar_t__ allow_vid_4095; } ;

/* Variables and functions */
 int /*<<< orphan*/  B53_CTRL_PAGE ; 
 int /*<<< orphan*/  B53_SWITCH_MODE ; 
 int /*<<< orphan*/  B53_VLAN_CTRL0 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL1 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL3 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL3_63XX ; 
 int /*<<< orphan*/  B53_VLAN_CTRL4 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL4_25 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL4_63XX ; 
 int /*<<< orphan*/  B53_VLAN_CTRL5 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL5_25 ; 
 int /*<<< orphan*/  B53_VLAN_CTRL5_63XX ; 
 int /*<<< orphan*/  B53_VLAN_PAGE ; 
 int SM_SW_FWD_MODE ; 
 int VC0_RESERVED_1 ; 
 int VC0_VID_CHK_EN ; 
 int VC0_VID_HASH_VID ; 
 int VC0_VLAN_EN ; 
 int VC1_RX_MCST_FWD_EN ; 
 int VC1_RX_MCST_TAG_EN ; 
 int VC1_RX_MCST_UNTAG_EN ; 
 int VC3_HIGH_8BIT_EN ; 
 int VC4_ING_VID_CHECK_MASK ; 
 int VC4_ING_VID_CHECK_S ; 
 int VC4_ING_VID_VIO_DROP ; 
 int VC4_ING_VID_VIO_FWD ; 
 int VC4_ING_VID_VIO_TO_IMP ; 
 int VC5_DROP_VTABLE_MISS ; 
 int VC5_VID_FFF_EN ; 
 int /*<<< orphan*/  FUNC0 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct b53_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (struct b53_device*) ; 
 scalar_t__ FUNC4 (struct b53_device*) ; 
 scalar_t__ FUNC5 (struct b53_device*) ; 

__attribute__((used)) static void FUNC6(struct b53_device *dev, int enable)
{
	u8 mgmt, vc0, vc1, vc4 = 0, vc5;

	FUNC0(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, &mgmt);
	FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL0, &vc0);
	FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL1, &vc1);

	if (FUNC3(dev) || FUNC4(dev)) {
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL4_25, &vc4);
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL5_25, &vc5);
	} else if (FUNC5(dev)) {
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL4_63XX, &vc4);
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL5_63XX, &vc5);
	} else {
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL4, &vc4);
		FUNC0(dev, B53_VLAN_PAGE, B53_VLAN_CTRL5, &vc5);
	}

	mgmt &= ~SM_SW_FWD_MODE;

	if (enable) {
		vc0 |= VC0_VLAN_EN | VC0_VID_CHK_EN | VC0_VID_HASH_VID;
		vc1 |= VC1_RX_MCST_UNTAG_EN | VC1_RX_MCST_FWD_EN;
		vc4 &= ~VC4_ING_VID_CHECK_MASK;
		vc4 |= VC4_ING_VID_VIO_DROP << VC4_ING_VID_CHECK_S;
		vc5 |= VC5_DROP_VTABLE_MISS;

		if (FUNC3(dev))
			vc0 &= ~VC0_RESERVED_1;

		if (FUNC3(dev) || FUNC4(dev))
			vc1 |= VC1_RX_MCST_TAG_EN;

		if (!FUNC3(dev) && !FUNC4(dev)) {
			if (dev->allow_vid_4095)
				vc5 |= VC5_VID_FFF_EN;
			else
				vc5 &= ~VC5_VID_FFF_EN;
		}
	} else {
		vc0 &= ~(VC0_VLAN_EN | VC0_VID_CHK_EN | VC0_VID_HASH_VID);
		vc1 &= ~(VC1_RX_MCST_UNTAG_EN | VC1_RX_MCST_FWD_EN);
		vc4 &= ~VC4_ING_VID_CHECK_MASK;
		vc5 &= ~VC5_DROP_VTABLE_MISS;

		if (FUNC3(dev) || FUNC4(dev))
			vc4 |= VC4_ING_VID_VIO_FWD << VC4_ING_VID_CHECK_S;
		else
			vc4 |= VC4_ING_VID_VIO_TO_IMP << VC4_ING_VID_CHECK_S;

		if (FUNC3(dev) || FUNC4(dev))
			vc1 &= ~VC1_RX_MCST_TAG_EN;

		if (!FUNC3(dev) && !FUNC4(dev))
			vc5 &= ~VC5_VID_FFF_EN;
	}

	FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL0, vc0);
	FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL1, vc1);

	if (FUNC3(dev) || FUNC4(dev)) {
		/* enable the high 8 bit vid check on 5325 */
		if (FUNC3(dev) && enable)
			FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL3,
				   VC3_HIGH_8BIT_EN);
		else
			FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL3, 0);

		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL4_25, vc4);
		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL5_25, vc5);
	} else if (FUNC5(dev)) {
		FUNC1(dev, B53_VLAN_PAGE, B53_VLAN_CTRL3_63XX, 0);
		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL4_63XX, vc4);
		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL5_63XX, vc5);
	} else {
		FUNC1(dev, B53_VLAN_PAGE, B53_VLAN_CTRL3, 0);
		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL4, vc4);
		FUNC2(dev, B53_VLAN_PAGE, B53_VLAN_CTRL5, vc5);
	}

	FUNC2(dev, B53_CTRL_PAGE, B53_SWITCH_MODE, mgmt);
}