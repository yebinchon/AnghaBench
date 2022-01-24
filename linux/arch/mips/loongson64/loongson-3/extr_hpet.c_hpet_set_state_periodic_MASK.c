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
 int HPET_COMPARE_VAL ; 
 int /*<<< orphan*/  HPET_T0_CFG ; 
 int /*<<< orphan*/  HPET_T0_CMP ; 
 int HPET_TN_32BIT ; 
 int HPET_TN_ENABLE ; 
 int HPET_TN_LEVEL ; 
 int HPET_TN_PERIODIC ; 
 int HPET_TN_SETVAL ; 
 int /*<<< orphan*/  hpet_lock ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 

__attribute__((used)) static int FUNC8(struct clock_event_device *evt)
{
	int cfg;

	FUNC5(&hpet_lock);

	FUNC4("set clock event to periodic mode!\n");
	/* stop counter */
	FUNC2();

	/* enables the timer0 to generate a periodic interrupt */
	cfg = FUNC0(HPET_T0_CFG);
	cfg &= ~HPET_TN_LEVEL;
	cfg |= HPET_TN_ENABLE | HPET_TN_PERIODIC | HPET_TN_SETVAL |
		HPET_TN_32BIT;
	FUNC3(HPET_T0_CFG, cfg);

	/* set the comparator */
	FUNC3(HPET_T0_CMP, HPET_COMPARE_VAL);
	FUNC7(1);
	FUNC3(HPET_T0_CMP, HPET_COMPARE_VAL);

	/* start counter */
	FUNC1();

	FUNC6(&hpet_lock);
	return 0;
}