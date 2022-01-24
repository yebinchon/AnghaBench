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
struct rfkill {int dummy; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  DRV_NAME ; 
 int ENOMEM ; 
 int /*<<< orphan*/  H1940_LATCH_BLUETOOTH_POWER ; 
 int /*<<< orphan*/  RFKILL_TYPE_BLUETOOTH ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  S3C2410_GPH0_nCTS0 ; 
 int /*<<< orphan*/  S3C2410_GPH2_TXD0 ; 
 int /*<<< orphan*/  S3C2410_GPH3_RXD0 ; 
 int /*<<< orphan*/  S3C2410_GPIO_OUTPUT ; 
 int /*<<< orphan*/  S3C_GPIO_PULL_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h1940bt_rfkill_ops ; 
 int /*<<< orphan*/  FUNC5 (struct platform_device*,struct rfkill*) ; 
 struct rfkill* FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct rfkill*) ; 
 int FUNC8 (struct rfkill*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(struct platform_device *pdev)
{
	struct rfkill *rfk;
	int ret = 0;

	ret = FUNC4(FUNC0(1), FUNC2(&pdev->dev));
	if (ret) {
		FUNC1(&pdev->dev, "could not get GPH1\n");
		return ret;
	}

	ret = FUNC4(H1940_LATCH_BLUETOOTH_POWER, FUNC2(&pdev->dev));
	if (ret) {
		FUNC3(FUNC0(1));
		FUNC1(&pdev->dev, "could not get BT_POWER\n");
		return ret;
	}

	/* Configures BT serial port GPIOs */
	FUNC9(FUNC0(0), S3C2410_GPH0_nCTS0);
	FUNC10(FUNC0(0), S3C_GPIO_PULL_NONE);
	FUNC9(FUNC0(1), S3C2410_GPIO_OUTPUT);
	FUNC10(FUNC0(1), S3C_GPIO_PULL_NONE);
	FUNC9(FUNC0(2), S3C2410_GPH2_TXD0);
	FUNC10(FUNC0(2), S3C_GPIO_PULL_NONE);
	FUNC9(FUNC0(3), S3C2410_GPH3_RXD0);
	FUNC10(FUNC0(3), S3C_GPIO_PULL_NONE);

	rfk = FUNC6(DRV_NAME, &pdev->dev, RFKILL_TYPE_BLUETOOTH,
			&h1940bt_rfkill_ops, NULL);
	if (!rfk) {
		ret = -ENOMEM;
		goto err_rfk_alloc;
	}

	ret = FUNC8(rfk);
	if (ret)
		goto err_rfkill;

	FUNC5(pdev, rfk);

	return 0;

err_rfkill:
	FUNC7(rfk);
err_rfk_alloc:
	return ret;
}