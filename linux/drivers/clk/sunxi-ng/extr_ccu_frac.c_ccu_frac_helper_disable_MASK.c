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
struct ccu_frac_internal {int enable; } ;
struct ccu_common {int features; int /*<<< orphan*/  lock; scalar_t__ reg; scalar_t__ base; } ;

/* Variables and functions */
 int CCU_FEATURE_FRACTIONAL ; 
 int FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

void FUNC4(struct ccu_common *common,
			     struct ccu_frac_internal *cf)
{
	unsigned long flags;
	u32 reg;

	if (!(common->features & CCU_FEATURE_FRACTIONAL))
		return;

	FUNC1(common->lock, flags);
	reg = FUNC0(common->base + common->reg);
	FUNC3(reg | cf->enable, common->base + common->reg);
	FUNC2(common->lock, flags);
}