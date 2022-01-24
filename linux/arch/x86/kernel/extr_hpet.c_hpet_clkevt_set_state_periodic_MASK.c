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
typedef  int uint64_t ;
struct clock_event_device {int mult; int shift; } ;
struct TYPE_2__ {unsigned int num; } ;

/* Variables and functions */
 int /*<<< orphan*/  HPET_COUNTER ; 
 unsigned int HPET_TN_32BIT ; 
 unsigned int HPET_TN_ENABLE ; 
 unsigned int HPET_TN_PERIODIC ; 
 unsigned int HPET_TN_SETVAL ; 
 int /*<<< orphan*/  FUNC0 (unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 int HZ ; 
 int NSEC_PER_SEC ; 
 TYPE_1__* FUNC2 (struct clock_event_device*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 unsigned int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (unsigned int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 

__attribute__((used)) static int FUNC9(struct clock_event_device *evt)
{
	unsigned int channel = FUNC2(evt)->num;
	unsigned int cfg, cmp, now;
	uint64_t delta;

	FUNC6();
	delta = ((uint64_t)(NSEC_PER_SEC / HZ)) * evt->mult;
	delta >>= evt->shift;
	now = FUNC4(HPET_COUNTER);
	cmp = now + (unsigned int)delta;
	cfg = FUNC4(FUNC0(channel));
	cfg |= HPET_TN_ENABLE | HPET_TN_PERIODIC | HPET_TN_SETVAL |
	       HPET_TN_32BIT;
	FUNC7(cfg, FUNC0(channel));
	FUNC7(cmp, FUNC1(channel));
	FUNC8(1);
	/*
	 * HPET on AMD 81xx needs a second write (with HPET_TN_SETVAL
	 * cleared) to T0_CMP to set the period. The HPET_TN_SETVAL
	 * bit is automatically cleared after the first write.
	 * (See AMD-8111 HyperTransport I/O Hub Data Sheet,
	 * Publication # 24674)
	 */
	FUNC7((unsigned int)delta, FUNC1(channel));
	FUNC5();
	FUNC3();

	return 0;
}