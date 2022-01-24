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
struct platform_device {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cpu_clk; int /*<<< orphan*/  ddr_clk; int /*<<< orphan*/  powersave_clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kirkwood_cpufreq_driver ; 
 TYPE_1__ priv ; 

__attribute__((used)) static int FUNC2(struct platform_device *pdev)
{
	FUNC1(&kirkwood_cpufreq_driver);

	FUNC0(priv.powersave_clk);
	FUNC0(priv.ddr_clk);
	FUNC0(priv.cpu_clk);

	return 0;
}