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
struct platform_device {int /*<<< orphan*/  dev; } ;
struct clk_hw {int dummy; } ;
struct clk {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  hw; } ;
struct TYPE_5__ {int /*<<< orphan*/  hw; } ;
struct TYPE_4__ {int /*<<< orphan*/  nb; struct clk_hw* xtal; } ;

/* Variables and functions */
 size_t CLKID_CPU_CLK_DYN1_SEL ; 
 struct clk* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 struct clk_hw* FUNC2 (struct clk_hw*,int /*<<< orphan*/ ) ; 
 int FUNC3 (struct clk*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__ g12a_cpu_clk_dyn ; 
 int /*<<< orphan*/  g12a_cpu_clk_mux_nb ; 
 TYPE_2__ g12a_cpu_clk_postmux0 ; 
 TYPE_1__ g12a_cpu_clk_postmux0_nb_data ; 

__attribute__((used)) static int FUNC5(struct platform_device *pdev,
					struct clk_hw **hws)
{
	const char *notifier_clk_name;
	struct clk *notifier_clk;
	struct clk_hw *xtal;
	int ret;

	xtal = FUNC2(hws[CLKID_CPU_CLK_DYN1_SEL], 0);

	/* Setup clock notifier for cpu_clk_postmux0 */
	g12a_cpu_clk_postmux0_nb_data.xtal = xtal;
	notifier_clk_name = FUNC1(&g12a_cpu_clk_postmux0.hw);
	notifier_clk = FUNC0(notifier_clk_name);
	ret = FUNC3(notifier_clk,
				    &g12a_cpu_clk_postmux0_nb_data.nb);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register the cpu_clk_postmux0 notifier\n");
		return ret;
	}

	/* Setup clock notifier for cpu_clk_dyn mux */
	notifier_clk_name = FUNC1(&g12a_cpu_clk_dyn.hw);
	notifier_clk = FUNC0(notifier_clk_name);
	ret = FUNC3(notifier_clk, &g12a_cpu_clk_mux_nb);
	if (ret) {
		FUNC4(&pdev->dev, "failed to register the cpu_clk_dyn notifier\n");
		return ret;
	}

	return 0;
}