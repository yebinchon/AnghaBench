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
typedef  scalar_t__ u32 ;
struct TYPE_2__ {scalar_t__ baseaddr; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MAX_CLUSTERS ; 
 scalar_t__ WAKE_INT_MASK ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 TYPE_1__* info ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__) ; 

void FUNC4(u32 cluster, u32 cpu, bool set)
{
	u32 mask, reg;

	if (cluster >= MAX_CLUSTERS)
		return;

	mask = FUNC0(cpu);

	if (!FUNC1(cluster))
		mask <<= 4;

	reg = FUNC2(info->baseaddr + WAKE_INT_MASK);

	if (set)
		reg |= mask;
	else
		reg &= ~mask;

	FUNC3(reg, info->baseaddr + WAKE_INT_MASK);
}