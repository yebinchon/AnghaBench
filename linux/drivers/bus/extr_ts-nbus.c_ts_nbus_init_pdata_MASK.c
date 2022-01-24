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
struct ts_nbus {void* rdy; void* ale; void* strobe; void* txrx; void* csn; void* data; } ;
struct platform_device {int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  GPIOD_IN ; 
 int /*<<< orphan*/  GPIOD_OUT_HIGH ; 
 scalar_t__ FUNC0 (void*) ; 
 int FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 void* FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 void* FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev, struct ts_nbus
		*ts_nbus)
{
	ts_nbus->data = FUNC4(&pdev->dev, "ts,data",
			GPIOD_OUT_HIGH);
	if (FUNC0(ts_nbus->data)) {
		FUNC2(&pdev->dev, "failed to retrieve ts,data-gpio from dts\n");
		return FUNC1(ts_nbus->data);
	}

	ts_nbus->csn = FUNC3(&pdev->dev, "ts,csn", GPIOD_OUT_HIGH);
	if (FUNC0(ts_nbus->csn)) {
		FUNC2(&pdev->dev, "failed to retrieve ts,csn-gpio from dts\n");
		return FUNC1(ts_nbus->csn);
	}

	ts_nbus->txrx = FUNC3(&pdev->dev, "ts,txrx", GPIOD_OUT_HIGH);
	if (FUNC0(ts_nbus->txrx)) {
		FUNC2(&pdev->dev, "failed to retrieve ts,txrx-gpio from dts\n");
		return FUNC1(ts_nbus->txrx);
	}

	ts_nbus->strobe = FUNC3(&pdev->dev, "ts,strobe", GPIOD_OUT_HIGH);
	if (FUNC0(ts_nbus->strobe)) {
		FUNC2(&pdev->dev, "failed to retrieve ts,strobe-gpio from dts\n");
		return FUNC1(ts_nbus->strobe);
	}

	ts_nbus->ale = FUNC3(&pdev->dev, "ts,ale", GPIOD_OUT_HIGH);
	if (FUNC0(ts_nbus->ale)) {
		FUNC2(&pdev->dev, "failed to retrieve ts,ale-gpio from dts\n");
		return FUNC1(ts_nbus->ale);
	}

	ts_nbus->rdy = FUNC3(&pdev->dev, "ts,rdy", GPIOD_IN);
	if (FUNC0(ts_nbus->rdy)) {
		FUNC2(&pdev->dev, "failed to retrieve ts,rdy-gpio from dts\n");
		return FUNC1(ts_nbus->rdy);
	}

	return 0;
}