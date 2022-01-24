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
typedef  size_t u8 ;
typedef  size_t u32 ;
struct pic32_ref_osc {size_t* parent_map; TYPE_1__* core; int /*<<< orphan*/  ctrl_reg; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  reg_lock; } ;

/* Variables and functions */
 int /*<<< orphan*/  LOCK_TIMEOUT_US ; 
 size_t REFO_ACTIVE ; 
 size_t REFO_SEL_MASK ; 
 size_t REFO_SEL_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (struct clk_hw*) ; 
 struct pic32_ref_osc* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 size_t FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ,size_t,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC8 (size_t,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, u8 index)
{
	struct pic32_ref_osc *refo = FUNC1(hw);
	unsigned long flags;
	u32 v;
	int err;

	if (refo->parent_map)
		index = refo->parent_map[index];

	/* wait until ACTIVE bit is zero or timeout */
	err = FUNC5(refo->ctrl_reg, v, !(v & REFO_ACTIVE),
				 1, LOCK_TIMEOUT_US);
	if (err) {
		FUNC3("%s: poll failed, clk active\n", FUNC0(hw));
		return err;
	}

	FUNC6(&refo->core->reg_lock, flags);

	FUNC2();

	/* calculate & apply new */
	v = FUNC4(refo->ctrl_reg);
	v &= ~(REFO_SEL_MASK << REFO_SEL_SHIFT);
	v |= index << REFO_SEL_SHIFT;

	FUNC8(v, refo->ctrl_reg);

	FUNC7(&refo->core->reg_lock, flags);

	return 0;
}