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
struct platform_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  idle_work ; 
 int /*<<< orphan*/  omap3_rom_rng_ops ; 
 int /*<<< orphan*/  rng_clk ; 

__attribute__((used)) static int FUNC3(struct platform_device *pdev)
{
	FUNC0(&idle_work);
	FUNC2(&omap3_rom_rng_ops);
	FUNC1(rng_clk);
	return 0;
}