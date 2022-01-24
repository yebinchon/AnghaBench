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
struct mtk_clk_mux {TYPE_1__* data; int /*<<< orphan*/  regmap; } ;
struct clk_hw {int dummy; } ;
struct TYPE_2__ {int mux_shift; int /*<<< orphan*/  mux_ofs; scalar_t__ mux_width; } ;

/* Variables and functions */
 int FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 struct mtk_clk_mux* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static u8 FUNC3(struct clk_hw *hw)
{
	struct mtk_clk_mux *mux = FUNC2(hw);
	u32 mask = FUNC0(mux->data->mux_width - 1, 0);
	u32 val;

	FUNC1(mux->regmap, mux->data->mux_ofs, &val);
	val = (val >> mux->data->mux_shift) & mask;

	return val;
}