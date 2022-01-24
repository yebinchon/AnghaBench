#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned long u32 ;
struct clk_hw {int dummy; } ;
struct TYPE_5__ {unsigned long shift; int width; unsigned long offset; } ;
struct TYPE_6__ {scalar_t__ reg; scalar_t__ base; } ;
struct ccu_mult {TYPE_1__ mult; int /*<<< orphan*/  mux; TYPE_2__ common; int /*<<< orphan*/  frac; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC1 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 unsigned long FUNC2 (TYPE_2__*,int /*<<< orphan*/ *,int,unsigned long) ; 
 struct ccu_mult* FUNC3 (struct clk_hw*) ; 
 unsigned long FUNC4 (scalar_t__) ; 

__attribute__((used)) static unsigned long FUNC5(struct clk_hw *hw,
					unsigned long parent_rate)
{
	struct ccu_mult *cm = FUNC3(hw);
	unsigned long val;
	u32 reg;

	if (FUNC0(&cm->common, &cm->frac))
		return FUNC1(&cm->common, &cm->frac);

	reg = FUNC4(cm->common.base + cm->common.reg);
	val = reg >> cm->mult.shift;
	val &= (1 << cm->mult.width) - 1;

	parent_rate = FUNC2(&cm->common, &cm->mux, -1,
						  parent_rate);

	return parent_rate * (val + cm->mult.offset);
}