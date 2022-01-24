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
struct rtl8366_smi {int /*<<< orphan*/  parent; } ;
typedef  enum rtl8367_extif_mode { ____Placeholder_rtl8367_extif_mode } rtl8367_extif_mode ;

/* Variables and functions */
 int FUNC0 (int) ; 
 int EINVAL ; 
 int /*<<< orphan*/  FUNC1 (struct rtl8366_smi*,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct rtl8366_smi*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  RTL8367B_BYPASS_LINE_RATE_REG ; 
 int FUNC3 (int) ; 
 int /*<<< orphan*/  RTL8367B_CHIP_DEBUG0_REG ; 
 int /*<<< orphan*/  RTL8367B_CHIP_DEBUG1_REG ; 
 int /*<<< orphan*/  RTL8367B_DIS_REG ; 
 int RTL8367B_DIS_RGMII_MASK ; 
 int FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
#define  RTL8367_EXTIF_MODE_DISABLED 135 
#define  RTL8367_EXTIF_MODE_GMII 134 
#define  RTL8367_EXTIF_MODE_MII_MAC 133 
#define  RTL8367_EXTIF_MODE_MII_PHY 132 
#define  RTL8367_EXTIF_MODE_RGMII 131 
#define  RTL8367_EXTIF_MODE_RGMII_33V 130 
#define  RTL8367_EXTIF_MODE_TMII_MAC 129 
#define  RTL8367_EXTIF_MODE_TMII_PHY 128 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

__attribute__((used)) static int FUNC7(struct rtl8366_smi *smi, int id,
				   enum rtl8367_extif_mode mode)
{
	int err;

	/* set port mode */
	switch (mode) {
	case RTL8367_EXTIF_MODE_RGMII:
	case RTL8367_EXTIF_MODE_RGMII_33V:
		FUNC2(smi, RTL8367B_CHIP_DEBUG0_REG, 0x0367);
		FUNC2(smi, RTL8367B_CHIP_DEBUG1_REG, 0x7777);
		break;

	case RTL8367_EXTIF_MODE_TMII_MAC:
	case RTL8367_EXTIF_MODE_TMII_PHY:
		FUNC1(smi, RTL8367B_BYPASS_LINE_RATE_REG,
			FUNC0((id + 1) % 2), FUNC0((id + 1) % 2));
		break;

	case RTL8367_EXTIF_MODE_GMII:
		FUNC1(smi, RTL8367B_CHIP_DEBUG0_REG,
		        FUNC3(id),
			FUNC3(id));
		FUNC1(smi, FUNC5(id), FUNC0(6), FUNC0(6));
		break;

	case RTL8367_EXTIF_MODE_MII_MAC:
	case RTL8367_EXTIF_MODE_MII_PHY:
	case RTL8367_EXTIF_MODE_DISABLED:
		FUNC1(smi, RTL8367B_BYPASS_LINE_RATE_REG,
			FUNC0((id + 1) % 2), 0);
		FUNC1(smi, FUNC5(id), FUNC0(6), 0);
		break;

	default:
		FUNC6(smi->parent,
			"invalid mode for external interface %d\n", id);
		return -EINVAL;
	}

	FUNC1(smi, RTL8367B_DIS_REG,
		RTL8367B_DIS_RGMII_MASK << FUNC4(id),
		mode << FUNC4(id));

	return 0;
}