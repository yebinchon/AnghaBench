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
struct TYPE_2__ {unsigned long long ticks_per_jiffy; } ;

/* Variables and functions */
 unsigned long long UDELAY_SHIFT ; 
 int /*<<< orphan*/  FUNC0 (unsigned long long) ; 
 TYPE_1__ arm_delay_ops ; 

__attribute__((used)) static void FUNC1(unsigned long xloops)
{
	unsigned long long loops = xloops;
	loops *= arm_delay_ops.ticks_per_jiffy;
	FUNC0(loops >> UDELAY_SHIFT);
}