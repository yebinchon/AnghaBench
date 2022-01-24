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
struct timer_of {int dummy; } ;
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int CH0TMR0EN ; 
 scalar_t__ CH0_REL ; 
 scalar_t__ CH_EN ; 
 int FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (struct timer_of*) ; 
 struct timer_of* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 (int,scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	struct timer_of *to = FUNC2(evt);
	u32 val;

	FUNC3(~0x0, FUNC1(to) + CH0_REL);
	val = FUNC0(FUNC1(to) + CH_EN);
	FUNC3(val | CH0TMR0EN, FUNC1(to) + CH_EN);

	return 0;
}