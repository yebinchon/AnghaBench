#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* u8 ;
struct clk_ops {int dummy; } ;
struct clk_hw {int dummy; } ;
struct clk_mux {struct clk_hw hw; scalar_t__ flags; void* mask; void* shift; void* reg; int /*<<< orphan*/ * lock; void* bit_idx; } ;
struct clk_gate {struct clk_hw hw; scalar_t__ flags; void* mask; void* shift; void* reg; int /*<<< orphan*/ * lock; void* bit_idx; } ;
typedef  int /*<<< orphan*/  spinlock_t ;

/* Variables and functions */
 int /*<<< orphan*/  EINVAL ; 
 struct clk_hw* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 scalar_t__ FUNC1 (struct clk_hw*) ; 
 int NO_GATE ; 
 int NO_MUX ; 
 void* base ; 
 struct clk_ops clk_gate_ops ; 
 struct clk_hw* FUNC2 (int /*<<< orphan*/ *,char const*,char const* const*,int,struct clk_hw*,struct clk_ops const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct clk_hw*,struct clk_ops const*,unsigned long) ; 
 struct clk_ops clk_mux_ops ; 
 int /*<<< orphan*/  FUNC3 (struct clk_mux*) ; 
 struct clk_mux* FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct clk_hw *FUNC5(const char *name,
		const char * const *parent_names, int num_parents,
		int offset_mux, u8 shift, u8 mask,
		int offset_gate, u8 bit_idx,
		unsigned long flags, spinlock_t *lock)
{
	struct clk_hw *hw;
	struct clk_gate *gate = NULL;
	struct clk_mux *mux = NULL;
	struct clk_hw *mux_hw = NULL, *gate_hw = NULL;
	const struct clk_ops *mux_ops = NULL, *gate_ops = NULL;

	if (offset_gate != NO_GATE) {
		gate = FUNC4(sizeof(*gate), GFP_KERNEL);
		if (!gate) {
			hw = FUNC0(-EINVAL);
			goto fail;
		}

		gate->reg = base + offset_gate;
		gate->bit_idx = bit_idx;
		gate->flags = 0;
		gate->lock = lock;
		gate_hw = &gate->hw;
		gate_ops = &clk_gate_ops;
	}

	if (offset_mux != NO_MUX) {
		mux = FUNC4(sizeof(*mux), GFP_KERNEL);
		if (!mux) {
			hw = FUNC0(-EINVAL);
			goto fail;
		}

		mux->reg = base + offset_mux;
		mux->shift = shift;
		mux->mask = mask;
		mux->flags = 0;
		mux_hw = &mux->hw;
		mux_ops = &clk_mux_ops;
	}

	if (mux_hw == NULL && gate_hw == NULL) {
		hw = FUNC0(-EINVAL);
		goto fail;
	}

	hw = FUNC2(NULL, name, parent_names, num_parents,
			mux_hw, mux_ops,
			NULL, NULL,
			gate_hw, gate_ops,
			flags);

fail:
	if (FUNC1(hw)) {
		FUNC3(gate);
		FUNC3(mux);
	}

	return hw;
}