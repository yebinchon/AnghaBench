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
struct raspberrypi_clk {int /*<<< orphan*/  pllb_arm; int /*<<< orphan*/  dev; int /*<<< orphan*/  pllb_arm_lookup; } ;

/* Variables and functions */
 int CLK_GET_RATE_NOCACHE ; 
 int CLK_SET_RATE_PARENT ; 
 int ENOMEM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC6(struct raspberrypi_clk *rpi)
{
	rpi->pllb_arm = FUNC2(rpi->dev,
				"pllb_arm", "pllb",
				CLK_SET_RATE_PARENT | CLK_GET_RATE_NOCACHE,
				1, 2);
	if (FUNC0(rpi->pllb_arm)) {
		FUNC5(rpi->dev, "Failed to initialize pllb_arm\n");
		return FUNC1(rpi->pllb_arm);
	}

	rpi->pllb_arm_lookup = FUNC4(rpi->pllb_arm, NULL, "cpu0");
	if (!rpi->pllb_arm_lookup) {
		FUNC5(rpi->dev, "Failed to initialize pllb_arm_lookup\n");
		FUNC3(rpi->pllb_arm);
		return -ENOMEM;
	}

	return 0;
}