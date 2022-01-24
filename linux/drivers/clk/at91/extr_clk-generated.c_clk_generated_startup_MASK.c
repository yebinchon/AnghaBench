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
typedef  int /*<<< orphan*/  u32 ;
struct clk_generated {int id; int /*<<< orphan*/  gckdiv; TYPE_1__* layout; int /*<<< orphan*/  parent_id; int /*<<< orphan*/  lock; int /*<<< orphan*/  regmap; } ;
struct TYPE_2__ {int pid_mask; int /*<<< orphan*/  gckcss_mask; int /*<<< orphan*/  offset; } ;

/* Variables and functions */
 int /*<<< orphan*/  AT91_PMC_PCR_GCKDIV_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC6(struct clk_generated *gck)
{
	u32 tmp;
	unsigned long flags;

	FUNC4(gck->lock, flags);
	FUNC3(gck->regmap, gck->layout->offset,
		     (gck->id & gck->layout->pid_mask));
	FUNC2(gck->regmap, gck->layout->offset, &tmp);
	FUNC5(gck->lock, flags);

	gck->parent_id = FUNC1(gck->layout->gckcss_mask, tmp);
	gck->gckdiv = FUNC0(AT91_PMC_PCR_GCKDIV_MASK, tmp);
}