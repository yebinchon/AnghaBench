#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_8__ {int /*<<< orphan*/  hw; } ;
struct TYPE_7__ {struct clk_hw** hws; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  nb; } ;

/* Variables and functions */
 struct clk* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (struct clk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 TYPE_4__ g12a_cpu_clk ; 
 int /*<<< orphan*/  g12a_cpu_clk_mux_nb ; 
 TYPE_3__ g12a_hw_onecell_data ; 
 TYPE_2__ g12a_sys_pll ; 
 TYPE_1__ g12a_sys_pll_nb_data ; 
 int FUNC4 (struct platform_device*,struct clk_hw**) ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev)
{
	struct clk_hw **hws = g12a_hw_onecell_data.hws;
	const char *notifier_clk_name;
	struct clk *notifier_clk;
	int ret;

	ret = FUNC4(pdev, hws);
	if (ret)
		return ret;

	/* Setup clock notifier for cpu_clk mux */
	notifier_clk_name = FUNC1(&g12a_cpu_clk.hw);
	notifier_clk = FUNC0(notifier_clk_name);
	ret = FUNC2(notifier_clk, &g12a_cpu_clk_mux_nb);
	if (ret) {
		FUNC3(&pdev->dev, "failed to register the cpu_clk notifier\n");
		return ret;
	}

	/* Setup clock notifier for sys_pll */
	notifier_clk_name = FUNC1(&g12a_sys_pll.hw);
	notifier_clk = FUNC0(notifier_clk_name);
	ret = FUNC2(notifier_clk, &g12a_sys_pll_nb_data.nb);
	if (ret) {
		FUNC3(&pdev->dev, "failed to register the sys_pll notifier\n");
		return ret;
	}

	return 0;
}