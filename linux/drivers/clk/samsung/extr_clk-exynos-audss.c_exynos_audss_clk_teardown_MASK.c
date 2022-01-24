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
struct TYPE_2__ {int num; int /*<<< orphan*/ * hws; } ;

/* Variables and functions */
 int EXYNOS_DOUT_SRP ; 
 int EXYNOS_MOUT_AUDSS ; 
 int EXYNOS_SRP_CLK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_1__* clk_data ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	int i;

	for (i = EXYNOS_MOUT_AUDSS; i < EXYNOS_DOUT_SRP; i++) {
		if (!FUNC0(clk_data->hws[i]))
			FUNC3(clk_data->hws[i]);
	}

	for (; i < EXYNOS_SRP_CLK; i++) {
		if (!FUNC0(clk_data->hws[i]))
			FUNC1(clk_data->hws[i]);
	}

	for (; i < clk_data->num; i++) {
		if (!FUNC0(clk_data->hws[i]))
			FUNC2(clk_data->hws[i]);
	}
}