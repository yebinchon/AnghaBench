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
typedef  int u32 ;
struct rmii_reset_reg {int mask; scalar_t__ reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  lock; scalar_t__ base; struct rmii_reset_reg* rmii_resets; } ;

/* Variables and functions */
 int MAX_SOC_EMACS ; 
 TYPE_1__ dscr ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int) ; 
 int FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

void FUNC4(int id, int assert)
{
	struct rmii_reset_reg *r;
	unsigned long flags;
	u32 val;

	if (id < 0 || id >= MAX_SOC_EMACS)
		return;

	r = &dscr.rmii_resets[id];
	if (r->mask == 0)
		return;

	FUNC2(&dscr.lock, flags);

	val = FUNC1(dscr.base + r->reg);
	if (assert)
		FUNC0(r->reg, val | r->mask);
	else
		FUNC0(r->reg, val & ~(r->mask));

	FUNC3(&dscr.lock, flags);
}