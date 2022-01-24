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
typedef  int u8 ;
typedef  int /*<<< orphan*/  u32 ;
struct mtk_clk_mux {scalar_t__ lock; TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int mux_shift; int /*<<< orphan*/  mux_ofs; scalar_t__ mux_width; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,unsigned long) ; 
 struct mtk_clk_mux* FUNC6 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC7(struct clk_hw *hw, u8 index)
{
	struct mtk_clk_mux *mux = FUNC6(hw);
	u32 mask = FUNC0(mux->data->mux_width - 1, 0);
	unsigned long flags = 0;

	if (mux->lock)
		FUNC4(mux->lock, flags);
	else
		FUNC1(mux->lock);

	FUNC3(mux->regmap, mux->data->mux_ofs, mask,
		index << mux->data->mux_shift);

	if (mux->lock)
		FUNC5(mux->lock, flags);
	else
		FUNC2(mux->lock);

	return 0;
}