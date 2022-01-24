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
typedef  int u32 ;
struct mtk_clk_mux {scalar_t__ lock; TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int mux_shift; scalar_t__ upd_shift; int /*<<< orphan*/  upd_ofs; int /*<<< orphan*/  set_ofs; int /*<<< orphan*/  clr_ofs; int /*<<< orphan*/  mux_ofs; scalar_t__ mux_width; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,unsigned long) ; 
 struct mtk_clk_mux* FUNC8 (struct clk_hw*) ; 

__attribute__((used)) static int FUNC9(struct clk_hw *hw, u8 index)
{
	struct mtk_clk_mux *mux = FUNC8(hw);
	u32 mask = FUNC1(mux->data->mux_width - 1, 0);
	u32 val, orig;
	unsigned long flags = 0;

	if (mux->lock)
		FUNC6(mux->lock, flags);
	else
		FUNC2(mux->lock);

	FUNC4(mux->regmap, mux->data->mux_ofs, &orig);
	val = (orig & ~(mask << mux->data->mux_shift))
			| (index << mux->data->mux_shift);

	if (val != orig) {
		FUNC5(mux->regmap, mux->data->clr_ofs,
				mask << mux->data->mux_shift);
		FUNC5(mux->regmap, mux->data->set_ofs,
				index << mux->data->mux_shift);

		if (mux->data->upd_shift >= 0)
			FUNC5(mux->regmap, mux->data->upd_ofs,
					FUNC0(mux->data->upd_shift));
	}

	if (mux->lock)
		FUNC7(mux->lock, flags);
	else
		FUNC3(mux->lock);

	return 0;
}