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
struct clk_hw {int dummy; } ;
struct clk_aux {scalar_t__ lock; int /*<<< orphan*/  reg; TYPE_1__* masks; int /*<<< orphan*/  rtbl_cnt; struct aux_rate_tbl* rtbl; } ;
struct aux_rate_tbl {unsigned long eq; unsigned long xscale; unsigned long yscale; } ;
struct TYPE_2__ {unsigned long eq_sel_mask; unsigned long eq_sel_shift; unsigned long xscale_sel_mask; unsigned long xscale_sel_shift; unsigned long yscale_sel_mask; unsigned long yscale_sel_shift; } ;

/* Variables and functions */
 int /*<<< orphan*/  aux_calc_rate ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*,unsigned long,unsigned long,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 unsigned long FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,unsigned long) ; 
 struct clk_aux* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long drate,
				unsigned long prate)
{
	struct clk_aux *aux = FUNC4(hw);
	struct aux_rate_tbl *rtbl = aux->rtbl;
	unsigned long val, flags = 0;
	int i;

	FUNC0(hw, drate, prate, aux_calc_rate, aux->rtbl_cnt,
			&i);

	if (aux->lock)
		FUNC2(aux->lock, flags);

	val = FUNC1(aux->reg) &
		~(aux->masks->eq_sel_mask << aux->masks->eq_sel_shift);
	val |= (rtbl[i].eq & aux->masks->eq_sel_mask) <<
		aux->masks->eq_sel_shift;
	val &= ~(aux->masks->xscale_sel_mask << aux->masks->xscale_sel_shift);
	val |= (rtbl[i].xscale & aux->masks->xscale_sel_mask) <<
		aux->masks->xscale_sel_shift;
	val &= ~(aux->masks->yscale_sel_mask << aux->masks->yscale_sel_shift);
	val |= (rtbl[i].yscale & aux->masks->yscale_sel_mask) <<
		aux->masks->yscale_sel_shift;
	FUNC5(val, aux->reg);

	if (aux->lock)
		FUNC3(aux->lock, flags);

	return 0;
}