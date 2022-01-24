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
typedef  unsigned long u32 ;
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 unsigned long CH0TMR0EN ; 
 scalar_t__ CH0_REL ; 
 scalar_t__ CH_EN ; 
 unsigned long FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned long,scalar_t__) ; 

__attribute__((used)) static int FUNC4(unsigned long evt,
	struct clock_event_device *clkevt)
{
	u32 val;
	struct timer_of *to = FUNC2(clkevt);

	val = FUNC0(FUNC1(to) + CH_EN);
	FUNC3(val & ~CH0TMR0EN, FUNC1(to) + CH_EN);
	FUNC3(evt, FUNC1(to) + CH0_REL);
	FUNC3(val | CH0TMR0EN, FUNC1(to) + CH_EN);

	return 0;
}