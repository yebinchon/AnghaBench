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
struct ccu_frac_internal {int* rates; int select; } ;
struct ccu_common {int features; int /*<<< orphan*/  hw; scalar_t__ reg; scalar_t__ base; } ;

/* Variables and functions */
 int CCU_FEATURE_FRACTIONAL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ,...) ; 
 int FUNC2 (scalar_t__) ; 

unsigned long FUNC3(struct ccu_common *common,
					struct ccu_frac_internal *cf)
{
	u32 reg;

	FUNC1("%s: Read fractional\n", FUNC0(&common->hw));

	if (!(common->features & CCU_FEATURE_FRACTIONAL))
		return 0;

	FUNC1("%s: clock is fractional (rates %lu and %lu)\n",
		 FUNC0(&common->hw), cf->rates[0], cf->rates[1]);

	reg = FUNC2(common->base + common->reg);

	FUNC1("%s: clock reg is 0x%x (select is 0x%x)\n",
		 FUNC0(&common->hw), reg, cf->select);

	return (reg & cf->select) ? cf->rates[1] : cf->rates[0];
}