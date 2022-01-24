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
struct clk_hw {int dummy; } ;
struct clk_generated {int id; int /*<<< orphan*/  lock; TYPE_1__* layout; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int pid_mask; int cmd; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int AT91_PMC_PCR_GCKEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 struct clk_generated* FUNC4 (struct clk_hw*) ; 

__attribute__((used)) static void FUNC5(struct clk_hw *hw)
{
	struct clk_generated *gck = FUNC4(hw);
	unsigned long flags;

	FUNC2(gck->lock, flags);
	FUNC1(gck->regmap, gck->layout->offset,
		     (gck->id & gck->layout->pid_mask));
	FUNC0(gck->regmap, gck->layout->offset,
			   gck->layout->cmd | AT91_PMC_PCR_GCKEN,
			   gck->layout->cmd);
	FUNC3(gck->lock, flags);
}