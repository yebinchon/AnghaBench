#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ u32 ;
struct mn {int /*<<< orphan*/  width; } ;
struct clk_hw {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  regmap; } ;
struct clk_dyn_rcg {scalar_t__ bank_reg; scalar_t__* ns_reg; scalar_t__* md_reg; TYPE_2__* p; TYPE_1__ clkr; struct mn* mn; } ;
struct TYPE_4__ {int /*<<< orphan*/  pre_div_width; } ;

/* Variables and functions */
 unsigned long FUNC0 (unsigned long,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC1 (struct mn*,scalar_t__) ; 
 scalar_t__ FUNC2 (struct mn*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (TYPE_2__*,scalar_t__) ; 
 int FUNC4 (struct clk_dyn_rcg*,scalar_t__) ; 
 scalar_t__ FUNC5 (struct mn*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,scalar_t__,scalar_t__*) ; 
 struct clk_dyn_rcg* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long
FUNC8(struct clk_hw *hw, unsigned long parent_rate)
{
	struct clk_dyn_rcg *rcg = FUNC7(hw);
	u32 m, n, pre_div, ns, md, mode, reg;
	int bank;
	struct mn *mn;
	bool banked_p = !!rcg->p[1].pre_div_width;
	bool banked_mn = !!rcg->mn[1].width;

	FUNC6(rcg->clkr.regmap, rcg->bank_reg, &reg);
	bank = FUNC4(rcg, reg);

	FUNC6(rcg->clkr.regmap, rcg->ns_reg[bank], &ns);
	m = n = pre_div = mode = 0;

	if (banked_mn) {
		mn = &rcg->mn[bank];
		FUNC6(rcg->clkr.regmap, rcg->md_reg[bank], &md);
		m = FUNC1(mn, md);
		n = FUNC2(mn, ns, m);
		/* Two NS registers means mode control is in NS register */
		if (rcg->ns_reg[0] != rcg->ns_reg[1])
			reg = ns;
		mode = FUNC5(mn, reg);
	}

	if (banked_p)
		pre_div = FUNC3(&rcg->p[bank], ns);

	return FUNC0(parent_rate, m, n, mode, pre_div);
}