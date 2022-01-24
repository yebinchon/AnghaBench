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
struct sh_tmu_channel {TYPE_1__* tmu; } ;
struct TYPE_2__ {int /*<<< orphan*/  clk; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCR ; 
 int /*<<< orphan*/  TCR_TPSC_CLK4 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_tmu_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_tmu_channel*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct sh_tmu_channel *ch)
{
	/* disable channel */
	FUNC1(ch, 0);

	/* disable interrupts in TMU block */
	FUNC2(ch, TCR, TCR_TPSC_CLK4);

	/* stop clock */
	FUNC0(ch->tmu->clk);
}