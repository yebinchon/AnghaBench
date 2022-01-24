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
typedef  int u64 ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  MSR_IA32_TSC_DEADLINE ; 
 int TSC_DIVISOR ; 
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC2(unsigned long delta,
			       struct clock_event_device *evt)
{
	u64 tsc;

	tsc = FUNC0();
	FUNC1(MSR_IA32_TSC_DEADLINE, tsc + (((u64) delta) * TSC_DIVISOR));
	return 0;
}