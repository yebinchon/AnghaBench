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
typedef  int u32 ;
struct clk_hw {int dummy; } ;
struct berlin2_avpll_channel {int index; scalar_t__ base; } ;

/* Variables and functions */
 scalar_t__ VCO_CTRL10 ; 
 int VCO_POWERUP_CH1 ; 
 int FUNC0 (scalar_t__) ; 
 struct berlin2_avpll_channel* FUNC1 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC2 (int,scalar_t__) ; 

__attribute__((used)) static void FUNC3(struct clk_hw *hw)
{
	struct berlin2_avpll_channel *ch = FUNC1(hw);
	u32 reg;

	reg = FUNC0(ch->base + VCO_CTRL10);
	reg &= ~(VCO_POWERUP_CH1 << ch->index);
	FUNC2(reg, ch->base + VCO_CTRL10);
}