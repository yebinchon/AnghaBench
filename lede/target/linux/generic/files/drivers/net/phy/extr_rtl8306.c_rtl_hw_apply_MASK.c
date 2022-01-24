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
struct switch_dev {int dummy; } ;
struct rtl_phyregs {int dummy; } ;

/* Variables and functions */
 int RTL8306_NUM_PORTS ; 
 int /*<<< orphan*/  RTL_REG_CPU_LINKUP ; 
 int /*<<< orphan*/  RTL_REG_EN_TRUNK ; 
 int /*<<< orphan*/  RTL_REG_RESET ; 
 int /*<<< orphan*/  RTL_REG_TRUNK_PORTSEL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (struct switch_dev*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct switch_dev*,int,struct rtl_phyregs*) ; 
 int /*<<< orphan*/  FUNC3 (struct switch_dev*,int,struct rtl_phyregs*) ; 
 int /*<<< orphan*/  FUNC4 (struct switch_dev*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (struct switch_dev*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC6(struct switch_dev *dev)
{
	int i;
	int trunk_en, trunk_psel;
	struct rtl_phyregs port5;

	FUNC3(dev, 5, &port5);

	/* disable rx/tx from PHYs */
	for (i = 0; i < RTL8306_NUM_PORTS - 1; i++) {
		FUNC4(dev, i, 0);
	}

	/* save trunking status */
	trunk_en = FUNC1(dev, RTL_REG_EN_TRUNK);
	trunk_psel = FUNC1(dev, RTL_REG_TRUNK_PORTSEL);

	/* trunk port 3 and 4
	 * XXX: Big WTF, but RealTek seems to do it */
	FUNC5(dev, RTL_REG_EN_TRUNK, 1);
	FUNC5(dev, RTL_REG_TRUNK_PORTSEL, 1);

	/* execute the software reset */
	FUNC5(dev, RTL_REG_RESET, 1);

	/* wait for the reset to complete,
	 * but don't wait for too long */
	for (i = 0; i < 10; i++) {
		if (FUNC1(dev, RTL_REG_RESET) == 0)
			break;

		FUNC0(1);
	}

	/* enable rx/tx from PHYs */
	for (i = 0; i < RTL8306_NUM_PORTS - 1; i++) {
		FUNC4(dev, i, 1);
	}

	/* restore trunking settings */
	FUNC5(dev, RTL_REG_EN_TRUNK, trunk_en);
	FUNC5(dev, RTL_REG_TRUNK_PORTSEL, trunk_psel);
	FUNC2(dev, 5, &port5);

	FUNC5(dev, RTL_REG_CPU_LINKUP, 1);

	return 0;
}