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
struct clk_hw {int dummy; } ;
struct clk_gpt {scalar_t__ lock; int /*<<< orphan*/  reg; } ;

/* Variables and functions */
 unsigned int GPT_MSCALE_MASK ; 
 unsigned int GPT_NSCALE_MASK ; 
 unsigned int GPT_NSCALE_SHIFT ; 
 unsigned int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct clk_gpt* FUNC3 (struct clk_hw*) ; 

__attribute__((used)) static unsigned long FUNC4(struct clk_hw *hw,
		unsigned long parent_rate)
{
	struct clk_gpt *gpt = FUNC3(hw);
	unsigned long flags = 0;
	unsigned int div = 1, val;

	if (gpt->lock)
		FUNC1(gpt->lock, flags);

	val = FUNC0(gpt->reg);

	if (gpt->lock)
		FUNC2(gpt->lock, flags);

	div += val & GPT_MSCALE_MASK;
	div *= 1 << (((val >> GPT_NSCALE_SHIFT) & GPT_NSCALE_MASK) + 1);

	if (!div)
		return 0;

	return parent_rate / div;
}