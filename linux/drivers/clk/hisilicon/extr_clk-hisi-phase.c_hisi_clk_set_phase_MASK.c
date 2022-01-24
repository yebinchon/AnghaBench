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
struct clk_hisi_phase {int mask; int shift; int /*<<< orphan*/  lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 int FUNC0 (struct clk_hisi_phase*,int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_hisi_phase* FUNC4 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC6(struct clk_hw *hw, int degrees)
{
	struct clk_hisi_phase *phase = FUNC4(hw);
	unsigned long flags = 0;
	int regval;
	u32 val;

	regval = FUNC0(phase, degrees);
	if (regval < 0)
		return regval;

	FUNC2(phase->lock, flags);

	val = FUNC1(phase->reg);
	val &= ~phase->mask;
	val |= regval << phase->shift;
	FUNC5(val, phase->reg);

	FUNC3(phase->lock, flags);

	return 0;
}