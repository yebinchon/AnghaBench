#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct freq_tbl {int /*<<< orphan*/  src; scalar_t__ pre_div; int /*<<< orphan*/  m; int /*<<< orphan*/  n; int /*<<< orphan*/  member_0; } ;
struct clk_hw {int dummy; } ;
struct TYPE_6__ {int /*<<< orphan*/  regmap; } ;
struct clk_dyn_rcg {TYPE_2__* s; TYPE_3__* p; TYPE_4__* mn; int /*<<< orphan*/ * md_reg; TYPE_1__ clkr; int /*<<< orphan*/ * ns_reg; int /*<<< orphan*/  bank_reg; } ;
struct TYPE_9__ {int /*<<< orphan*/  width; } ;
struct TYPE_8__ {int /*<<< orphan*/  pre_div_width; } ;
struct TYPE_7__ {int /*<<< orphan*/  parent_map; } ;

/* Variables and functions */
 int FUNC0 (struct clk_dyn_rcg*,struct freq_tbl*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct clk_hw*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC5 (struct clk_dyn_rcg*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct clk_dyn_rcg* FUNC7 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC8(struct clk_hw *hw, u8 index)
{
	struct clk_dyn_rcg *rcg = FUNC7(hw);
	u32 ns, md, reg;
	int bank;
	struct freq_tbl f = { 0 };
	bool banked_mn = !!rcg->mn[1].width;
	bool banked_p = !!rcg->p[1].pre_div_width;

	FUNC6(rcg->clkr.regmap, rcg->bank_reg, &reg);
	bank = FUNC5(rcg, reg);

	FUNC6(rcg->clkr.regmap, rcg->ns_reg[bank], &ns);

	if (banked_mn) {
		FUNC6(rcg->clkr.regmap, rcg->md_reg[bank], &md);
		f.m = FUNC1(&rcg->mn[bank], md);
		f.n = FUNC2(&rcg->mn[bank], ns, f.m);
	}

	if (banked_p)
		f.pre_div = FUNC3(&rcg->p[bank], ns) + 1;

	f.src = FUNC4(hw, rcg->s[bank].parent_map, index);
	return FUNC0(rcg, &f);
}