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
struct device {int dummy; } ;
struct ahci_host_priv {scalar_t__ mmio; int /*<<< orphan*/ * clks; } ;

/* Variables and functions */
 scalar_t__ AHCI_DM816_P0PHYCR_REG ; 
 scalar_t__ AHCI_DM816_P1PHYCR_REG ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int FUNC2 (int) ; 
 int FUNC3 (int) ; 
 int FUNC4 (int) ; 
 int FUNC5 (int) ; 
 int EINVAL ; 
 int FUNC6 (unsigned long) ; 
 unsigned long FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct device*,char*) ; 
 int /*<<< orphan*/  FUNC9 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC10(struct ahci_host_priv *hpriv, struct device *dev)
{
	unsigned long refclk_rate;
	int mpy;
	u32 val;

	/*
	 * We should have been supplied two clocks: the functional and
	 * keep-alive clock and the external reference clock. We need the
	 * rate of the latter to calculate the correct value of MPY bits.
	 */
	if (!hpriv->clks[1]) {
		FUNC8(dev, "reference clock not supplied\n");
		return -EINVAL;
	}

	refclk_rate = FUNC7(hpriv->clks[1]);
	if ((refclk_rate % 100) != 0) {
		FUNC8(dev, "reference clock rate must be divisible by 100\n");
		return -EINVAL;
	}

	mpy = FUNC6(refclk_rate);
	if (mpy < 0) {
		FUNC8(dev, "can't calculate the MPY bits value\n");
		return -EINVAL;
	}

	/* Enable the PHY and configure the first HBA port. */
	val = FUNC2(mpy) | FUNC1(1) |
	      FUNC3(4) | FUNC4(1) |
	      FUNC5(3) | FUNC0(1);
	FUNC9(val, hpriv->mmio + AHCI_DM816_P0PHYCR_REG);

	/* Configure the second HBA port. */
	val = FUNC1(1) | FUNC3(4) |
	      FUNC4(1) | FUNC5(3);
	FUNC9(val, hpriv->mmio + AHCI_DM816_P1PHYCR_REG);

	return 0;
}