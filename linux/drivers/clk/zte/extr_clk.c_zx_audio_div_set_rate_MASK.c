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
struct zx_clk_audio_div_table {unsigned long rate; unsigned int frac_reg; unsigned int int_reg; } ;
struct clk_zx_audio_divider {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned int CLK_AUDIO_DIV_INT_FRAC_RE ; 
 int /*<<< orphan*/  FUNC0 (struct clk_zx_audio_divider*,struct zx_clk_audio_div_table*,unsigned long,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,unsigned long) ; 
 unsigned int FUNC3 (scalar_t__) ; 
 struct clk_zx_audio_divider* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int,scalar_t__) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, unsigned long rate,
				    unsigned long parent_rate)
{
	struct clk_zx_audio_divider *zx_audio_div = FUNC4(hw);
	struct zx_clk_audio_div_table divt;
	unsigned int val;

	FUNC0(zx_audio_div, &divt, rate, parent_rate);
	if (divt.rate != rate)
		FUNC2("the real rate is:%ld", divt.rate);

	FUNC5(divt.frac_reg, zx_audio_div->reg_base);

	val = FUNC3(zx_audio_div->reg_base + 0x4);
	val &= ~0xffff;
	val |= divt.int_reg | CLK_AUDIO_DIV_INT_FRAC_RE;
	FUNC5(val, zx_audio_div->reg_base + 0x4);

	FUNC1(1);

	val = FUNC3(zx_audio_div->reg_base + 0x4);
	val &= ~CLK_AUDIO_DIV_INT_FRAC_RE;
	FUNC5(val, zx_audio_div->reg_base + 0x4);

	return 0;
}