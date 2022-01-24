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
struct clk_apmu {unsigned long enable_mask; scalar_t__ lock; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,unsigned long) ; 
 struct clk_apmu* FUNC3 (struct clk_hw*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned long,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(struct clk_hw *hw)
{
	struct clk_apmu *apmu = FUNC3(hw);
	unsigned long data;
	unsigned long flags = 0;

	if (apmu->lock)
		FUNC1(apmu->lock, flags);

	data = FUNC0(apmu->base) | apmu->enable_mask;
	FUNC4(data, apmu->base);

	if (apmu->lock)
		FUNC2(apmu->lock, flags);

	return 0;
}