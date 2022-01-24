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
struct TYPE_2__ {char const* dev_id; char const* con_id; struct clk* clk; } ;
struct clk {unsigned int module; unsigned int bits; TYPE_1__ cl; int /*<<< orphan*/  (* disable ) (struct clk*) ;int /*<<< orphan*/  enable; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 struct clk* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct clk*) ; 
 int /*<<< orphan*/  pmu_enable ; 

__attribute__((used)) static void FUNC3(const char *dev, const char *con, bool deactivate,
			   unsigned int module, unsigned int bits)
{
	struct clk *clk = FUNC1(sizeof(struct clk), GFP_KERNEL);

	clk->cl.dev_id = dev;
	clk->cl.con_id = con;
	clk->cl.clk = clk;
	clk->enable = pmu_enable;
	clk->disable = pmu_disable;
	clk->module = module;
	clk->bits = bits;
	if (deactivate) {
		/*
		 * Disable it during the initialization. Module should enable
		 * when used
		 */
		FUNC2(clk);
	}
	FUNC0(&clk->cl);
}