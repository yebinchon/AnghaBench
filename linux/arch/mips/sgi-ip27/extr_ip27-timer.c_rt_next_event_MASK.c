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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int ETIME ; 
 unsigned long FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,unsigned long) ; 
 int PI_COUNT_OFFSET ; 
 scalar_t__ PI_RT_COMPARE_A ; 
 int /*<<< orphan*/  PI_RT_COUNT ; 
 int FUNC2 (unsigned int) ; 
 unsigned int FUNC3 () ; 

__attribute__((used)) static int FUNC4(unsigned long delta, struct clock_event_device *evt)
{
	unsigned int cpu = FUNC3();
	int slice = FUNC2(cpu);
	unsigned long cnt;

	cnt = FUNC0(PI_RT_COUNT);
	cnt += delta;
	FUNC1(PI_RT_COMPARE_A + PI_COUNT_OFFSET * slice, cnt);

	return FUNC0(PI_RT_COUNT) >= cnt ? -ETIME : 0;
}