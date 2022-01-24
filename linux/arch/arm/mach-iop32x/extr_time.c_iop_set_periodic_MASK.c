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
struct clock_event_device {int dummy; } ;

/* Variables and functions */
 int IOP_TMR_EN ; 
 int IOP_TMR_RELOAD ; 
 int FUNC0 () ; 
 scalar_t__ ticks_per_jiffy ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 

__attribute__((used)) static int FUNC4(struct clock_event_device *evt)
{
	u32 tmr = FUNC0();

	FUNC2(tmr & ~IOP_TMR_EN);
	FUNC1(ticks_per_jiffy - 1);
	FUNC3(ticks_per_jiffy - 1);
	tmr |= (IOP_TMR_RELOAD | IOP_TMR_EN);

	FUNC2(tmr);
	return 0;
}