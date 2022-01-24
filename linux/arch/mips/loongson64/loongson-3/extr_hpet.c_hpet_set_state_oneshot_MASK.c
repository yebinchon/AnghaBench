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
 int /*<<< orphan*/  HPET_T0_CFG ; 
 int HPET_TN_32BIT ; 
 int HPET_TN_ENABLE ; 
 int HPET_TN_PERIODIC ; 
 int /*<<< orphan*/  hpet_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(struct clock_event_device *evt)
{
	int cfg;

	FUNC3(&hpet_lock);

	FUNC2("set clock event to one shot mode!\n");
	cfg = FUNC0(HPET_T0_CFG);
	/*
	 * set timer0 type
	 * 1 : periodic interrupt
	 * 0 : non-periodic(oneshot) interrupt
	 */
	cfg &= ~HPET_TN_PERIODIC;
	cfg |= HPET_TN_ENABLE | HPET_TN_32BIT;
	FUNC1(HPET_T0_CFG, cfg);

	FUNC4(&hpet_lock);
	return 0;
}