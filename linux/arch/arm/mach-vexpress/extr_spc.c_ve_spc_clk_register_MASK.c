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
struct device {int /*<<< orphan*/  id; } ;
struct TYPE_2__ {struct clk_init_data* init; } ;
struct clk_spc {scalar_t__ cluster; TYPE_1__ hw; } ;
struct clk_init_data {scalar_t__ num_parents; int /*<<< orphan*/  flags; int /*<<< orphan*/ * ops; int /*<<< orphan*/  name; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CLK_GET_RATE_NOCACHE ; 
 int /*<<< orphan*/  ENOMEM ; 
 struct clk* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 int /*<<< orphan*/  clk_spc_ops ; 
 int /*<<< orphan*/  FUNC1 (struct device*) ; 
 struct clk* FUNC2 (struct device*,TYPE_1__*) ; 
 struct clk_spc* FUNC3 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk *FUNC5(struct device *cpu_dev)
{
	struct clk_init_data init;
	struct clk_spc *spc;

	spc = FUNC3(sizeof(*spc), GFP_KERNEL);
	if (!spc)
		return FUNC0(-ENOMEM);

	spc->hw.init = &init;
	spc->cluster = FUNC4(cpu_dev->id);

	spc->cluster = spc->cluster < 0 ? 0 : spc->cluster;

	init.name = FUNC1(cpu_dev);
	init.ops = &clk_spc_ops;
	init.flags = CLK_GET_RATE_NOCACHE;
	init.num_parents = 0;

	return FUNC2(cpu_dev, &spc->hw);
}