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
struct clk {size_t bits; } ;
struct TYPE_2__ {int /*<<< orphan*/  start; } ;

/* Variables and functions */
 int FUNC0 (size_t) ; 
 int CON_CLK_INT ; 
 int CON_CNT ; 
 int CON_EDGE_ANY ; 
 int CON_SYNC ; 
 int /*<<< orphan*/  FUNC1 (size_t) ; 
 int /*<<< orphan*/  GPTU_IRNEN ; 
 int /*<<< orphan*/  FUNC2 (size_t) ; 
 int /*<<< orphan*/  FUNC3 (size_t) ; 
 int /*<<< orphan*/  IRQF_TIMER ; 
 int RUN_RL ; 
 int RUN_SEN ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* irqres ; 
 int /*<<< orphan*/  FUNC6 (char*) ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  timer_irq_handler ; 

__attribute__((used)) static int FUNC8(struct clk *clk)
{
	int ret = FUNC7(irqres[clk->bits].start, timer_irq_handler,
		IRQF_TIMER, "gtpu", NULL);
	if (ret) {
		FUNC6("gptu: failed to request irq\n");
		return ret;
	}

	FUNC5(CON_CNT | CON_EDGE_ANY | CON_SYNC | CON_CLK_INT,
		FUNC1(clk->bits));
	FUNC5(1, FUNC2(clk->bits));
	FUNC5(FUNC4(GPTU_IRNEN) | FUNC0(clk->bits), GPTU_IRNEN);
	FUNC5(RUN_SEN | RUN_RL, FUNC3(clk->bits));
	return 0;
}