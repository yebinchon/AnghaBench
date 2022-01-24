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
struct icst_vco {int dummy; } ;
struct clk_icst {unsigned long rate; TYPE_1__* params; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {unsigned long ref; } ;

/* Variables and functions */
 unsigned long FUNC0 (TYPE_1__*,struct icst_vco) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 struct clk_icst* FUNC2 (struct clk_hw*) ; 
 int FUNC3 (struct clk_icst*,struct icst_vco*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
				      unsigned long parent_rate)
{
	struct clk_icst *icst = FUNC2(hw);
	struct icst_vco vco;
	int ret;

	if (parent_rate)
		icst->params->ref = parent_rate;
	ret = FUNC3(icst, &vco);
	if (ret) {
		FUNC1("ICST: could not get VCO setting\n");
		return 0;
	}
	icst->rate = FUNC0(icst->params, vco);
	return icst->rate;
}