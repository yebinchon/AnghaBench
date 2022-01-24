#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  platform_data; } ;
struct platform_device {TYPE_1__ dev; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/  (*) (int /*<<< orphan*/ )) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idle_work ; 
 int /*<<< orphan*/  omap3_rom_rng_call ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  omap3_rom_rng_ops ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  rng_clk ; 

__attribute__((used)) static int FUNC9(struct platform_device *pdev)
{
	int ret = 0;

	FUNC8("initializing\n");

	omap3_rom_rng_call = pdev->dev.platform_data;
	if (!omap3_rom_rng_call) {
		FUNC7("omap3_rom_rng_call is NULL\n");
		return -EINVAL;
	}

	FUNC0(&idle_work, omap3_rom_rng_idle);
	rng_clk = FUNC4(&pdev->dev, "ick");
	if (FUNC1(rng_clk)) {
		FUNC7("unable to get RNG clock\n");
		return FUNC2(rng_clk);
	}

	/* Leave the RNG in reset state. */
	ret = FUNC3(rng_clk);
	if (ret)
		return ret;
	FUNC6(0);

	return FUNC5(&omap3_rom_rng_ops);
}