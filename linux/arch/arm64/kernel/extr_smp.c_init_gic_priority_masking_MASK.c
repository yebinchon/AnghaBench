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

/* Variables and functions */
 int GIC_PRIO_IRQON ; 
 int GIC_PRIO_PSR_I_SET ; 
 int PSR_I_BIT ; 
 scalar_t__ FUNC0 (int) ; 
 int /*<<< orphan*/  daif ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(void)
{
	u32 cpuflags;

	if (FUNC0(!FUNC1()))
		return;

	cpuflags = FUNC3(daif);

	FUNC0(!(cpuflags & PSR_I_BIT));

	FUNC2(GIC_PRIO_IRQON | GIC_PRIO_PSR_I_SET);
}