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
typedef  int /*<<< orphan*/  u8 ;
struct clk_omap_reg {int offset; } ;
struct clk_hw_omap {int /*<<< orphan*/  enable_bit; int /*<<< orphan*/  enable_reg; } ;
struct TYPE_2__ {int /*<<< orphan*/  cm_idlest_val; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct clk_omap_reg*,int /*<<< orphan*/ *,int) ; 
 TYPE_1__* FUNC1 () ; 

void FUNC2(struct clk_hw_omap *clk,
				struct clk_omap_reg *idlest_reg, u8 *idlest_bit,
				u8 *idlest_val)
{
	FUNC0(idlest_reg, &clk->enable_reg, sizeof(*idlest_reg));

	idlest_reg->offset &= ~0xf0;
	idlest_reg->offset |= 0x20;

	*idlest_bit = clk->enable_bit;

	/*
	 * 24xx uses 0 to indicate not ready, and 1 to indicate ready.
	 * 34xx reverses this, just to keep us on our toes
	 * AM35xx uses both, depending on the module.
	 */
	*idlest_val = FUNC1()->cm_idlest_val;
}