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
struct TYPE_2__ {unsigned int clk_num; struct pistachio_clk_provider* clks; } ;
struct pistachio_clk_provider {TYPE_1__ clk_data; int /*<<< orphan*/  base; struct device_node* node; } ;
struct device_node {int dummy; } ;
struct clk {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  GFP_KERNEL ; 
 struct pistachio_clk_provider* FUNC0 (unsigned int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct pistachio_clk_provider*) ; 
 struct pistachio_clk_provider* FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct device_node*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 

struct pistachio_clk_provider *
FUNC5(struct device_node *node, unsigned int num_clks)
{
	struct pistachio_clk_provider *p;

	p = FUNC2(sizeof(*p), GFP_KERNEL);
	if (!p)
		return p;

	p->clk_data.clks = FUNC0(num_clks, sizeof(struct clk *), GFP_KERNEL);
	if (!p->clk_data.clks)
		goto free_provider;
	p->clk_data.clk_num = num_clks;
	p->node = node;
	p->base = FUNC3(node, 0);
	if (!p->base) {
		FUNC4("Failed to map clock provider registers\n");
		goto free_clks;
	}

	return p;

free_clks:
	FUNC1(p->clk_data.clks);
free_provider:
	FUNC1(p);
	return NULL;
}