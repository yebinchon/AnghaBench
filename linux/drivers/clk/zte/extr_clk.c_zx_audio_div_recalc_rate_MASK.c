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
typedef  int /*<<< orphan*/  u32 ;
struct clk_zx_audio_divider {scalar_t__ reg_base; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 unsigned long FUNC0 (struct clk_zx_audio_divider*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 struct clk_zx_audio_divider* FUNC2 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC3(struct clk_hw *hw,
					  unsigned long parent_rate)
{
	struct clk_zx_audio_divider *zx_audio_div = FUNC2(hw);
	u32 reg_frac, reg_int;

	reg_frac = FUNC1(zx_audio_div->reg_base);
	reg_int = FUNC1(zx_audio_div->reg_base + 0x4);

	return FUNC0(zx_audio_div, reg_frac, reg_int, parent_rate);
}