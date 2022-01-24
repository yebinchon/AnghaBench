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
struct TYPE_2__ {char* dev_id; char* con_id; struct clk* clk; } ;
struct clk {int module; TYPE_1__ cl; int /*<<< orphan*/  enable; int /*<<< orphan*/  rates; scalar_t__ rate; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  clkout_enable ; 
 void* FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/ * valid_clkout_rates ; 

__attribute__((used)) static void FUNC3(void)
{
	int i;

	for (i = 0; i < 4; i++) {
		struct clk *clk;
		char *name;

		name = FUNC1(sizeof("clkout0"), GFP_KERNEL);
		FUNC2(name, "clkout%d", i);

		clk = FUNC1(sizeof(struct clk), GFP_KERNEL);
		clk->cl.dev_id = "1f103000.cgu";
		clk->cl.con_id = name;
		clk->cl.clk = clk;
		clk->rate = 0;
		clk->rates = valid_clkout_rates[i];
		clk->enable = clkout_enable;
		clk->module = i;
		FUNC0(&clk->cl);
	}
}