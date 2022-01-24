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
struct tcon_ch1_clk {int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;
struct clk_hw {int dummy; } ;

/* Variables and functions */
 int TCON_CH1_SCLK1_GATE_BIT ; 
 int TCON_CH1_SCLK2_GATE_BIT ; 
 struct tcon_ch1_clk* FUNC0 (struct clk_hw*) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct tcon_ch1_clk *tclk = FUNC0(hw);
	unsigned long flags;
	u32 reg;

	FUNC2(&tclk->lock, flags);
	reg = FUNC1(tclk->reg);
	reg &= ~(TCON_CH1_SCLK2_GATE_BIT | TCON_CH1_SCLK1_GATE_BIT);
	FUNC4(reg, tclk->reg);
	FUNC3(&tclk->lock, flags);
}