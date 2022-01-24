#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct bcm_device {int res_enabled; int (* set_shutdown ) (struct bcm_device*,int) ;int (* set_device_wakeup ) (struct bcm_device*,int) ;TYPE_1__* supplies; int /*<<< orphan*/  lpo_clk; int /*<<< orphan*/  txco_clk; int /*<<< orphan*/  dev; } ;
struct TYPE_3__ {scalar_t__ supply; } ;

/* Variables and functions */
 int /*<<< orphan*/  BCM_NUM_SUPPLIES ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int FUNC6 (struct bcm_device*,int) ; 
 int FUNC7 (struct bcm_device*,int) ; 
 int FUNC8 (struct bcm_device*,int) ; 
 int /*<<< orphan*/  FUNC9 (int,int) ; 

__attribute__((used)) static int FUNC10(struct bcm_device *dev, bool powered)
{
	int err;

	if (powered && !dev->res_enabled) {
		/* Intel Macs use bcm_apple_get_resources() and don't
		 * have regulator supplies configured.
		 */
		if (dev->supplies[0].supply) {
			err = FUNC5(BCM_NUM_SUPPLIES,
						    dev->supplies);
			if (err)
				return err;
		}

		/* LPO clock needs to be 32.768 kHz */
		err = FUNC2(dev->lpo_clk, 32768);
		if (err) {
			FUNC3(dev->dev, "Could not set LPO clock rate\n");
			goto err_regulator_disable;
		}

		err = FUNC1(dev->lpo_clk);
		if (err)
			goto err_regulator_disable;

		err = FUNC1(dev->txco_clk);
		if (err)
			goto err_lpo_clk_disable;
	}

	err = dev->set_shutdown(dev, powered);
	if (err)
		goto err_txco_clk_disable;

	err = dev->set_device_wakeup(dev, powered);
	if (err)
		goto err_revert_shutdown;

	if (!powered && dev->res_enabled) {
		FUNC0(dev->txco_clk);
		FUNC0(dev->lpo_clk);

		/* Intel Macs use bcm_apple_get_resources() and don't
		 * have regulator supplies configured.
		 */
		if (dev->supplies[0].supply)
			FUNC4(BCM_NUM_SUPPLIES,
					       dev->supplies);
	}

	/* wait for device to power on and come out of reset */
	FUNC9(100000, 120000);

	dev->res_enabled = powered;

	return 0;

err_revert_shutdown:
	dev->set_shutdown(dev, !powered);
err_txco_clk_disable:
	if (powered && !dev->res_enabled)
		FUNC0(dev->txco_clk);
err_lpo_clk_disable:
	if (powered && !dev->res_enabled)
		FUNC0(dev->lpo_clk);
err_regulator_disable:
	if (powered && !dev->res_enabled)
		FUNC4(BCM_NUM_SUPPLIES, dev->supplies);
	return err;
}