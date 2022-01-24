#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  clk; } ;
struct TYPE_5__ {TYPE_1__ hw; } ;
struct TYPE_6__ {TYPE_2__ clkr; } ;

/* Variables and functions */
 TYPE_3__ apps_clk_src ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  gcc_ipq4019_cpu_clk_notifier ; 

__attribute__((used)) static int FUNC1(struct platform_device *pdev)
{
	return FUNC0(apps_clk_src.clkr.hw.clk,
				       &gcc_ipq4019_cpu_clk_notifier);
}