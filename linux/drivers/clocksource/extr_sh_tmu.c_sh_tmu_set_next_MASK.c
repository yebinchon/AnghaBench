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
struct sh_tmu_channel {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  TCNT ; 
 int /*<<< orphan*/  TCOR ; 
 int /*<<< orphan*/  TCR ; 
 unsigned long TCR_TPSC_CLK4 ; 
 unsigned long TCR_UNIE ; 
 int /*<<< orphan*/  FUNC0 (struct sh_tmu_channel*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct sh_tmu_channel*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct sh_tmu_channel*,int /*<<< orphan*/ ,unsigned long) ; 

__attribute__((used)) static void FUNC3(struct sh_tmu_channel *ch, unsigned long delta,
			    int periodic)
{
	/* stop timer */
	FUNC1(ch, 0);

	/* acknowledge interrupt */
	FUNC0(ch, TCR);

	/* enable interrupt */
	FUNC2(ch, TCR, TCR_UNIE | TCR_TPSC_CLK4);

	/* reload delta value in case of periodic timer */
	if (periodic)
		FUNC2(ch, TCOR, delta);
	else
		FUNC2(ch, TCOR, 0xffffffff);

	FUNC2(ch, TCNT, delta);

	/* start timer */
	FUNC1(ch, 1);
}