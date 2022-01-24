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
struct device_node {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int) ; 
 int /*<<< orphan*/  twd_clk ; 
 int /*<<< orphan*/  twd_timer_rate ; 

__attribute__((used)) static void FUNC8(struct device_node *np)
{
	int err;

	if (np)
		twd_clk = FUNC6(np, 0);
	else
		twd_clk = FUNC3("smp_twd", NULL);

	if (FUNC0(twd_clk)) {
		FUNC7("smp_twd: clock not found %d\n", (int) FUNC1(twd_clk));
		return;
	}

	err = FUNC4(twd_clk);
	if (err) {
		FUNC7("smp_twd: clock failed to prepare+enable: %d\n", err);
		FUNC5(twd_clk);
		return;
	}

	twd_timer_rate = FUNC2(twd_clk);
}