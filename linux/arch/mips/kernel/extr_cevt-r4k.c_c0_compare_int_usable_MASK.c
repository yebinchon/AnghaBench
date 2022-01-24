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

/* Variables and functions */
 unsigned int COMPARE_INT_SEEN_TICKS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 () ; 
 unsigned int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (unsigned int) ; 

int FUNC4(void)
{
	unsigned int delta;
	unsigned int cnt;

#ifdef CONFIG_KVM_GUEST
    return 1;
#endif

	/*
	 * IP7 already pending?	 Try to clear it by acking the timer.
	 */
	if (FUNC1()) {
		cnt = FUNC2();
		FUNC3(cnt);
		FUNC0();
		while (FUNC2() < (cnt  + COMPARE_INT_SEEN_TICKS))
			if (!FUNC1())
				break;
		if (FUNC1())
			return 0;
	}

	for (delta = 0x10; delta <= 0x400000; delta <<= 1) {
		cnt = FUNC2();
		cnt += delta;
		FUNC3(cnt);
		FUNC0();
		if ((int)(FUNC2() - cnt) < 0)
		    break;
		/* increase delta if the timer was already expired */
	}

	while ((int)(FUNC2() - cnt) <= 0)
		;	/* Wait for expiry  */

	while (FUNC2() < (cnt + COMPARE_INT_SEEN_TICKS))
		if (FUNC1())
			break;
	if (!FUNC1())
		return 0;
	cnt = FUNC2();
	FUNC3(cnt);
	FUNC0();
	while (FUNC2() < (cnt + COMPARE_INT_SEEN_TICKS))
		if (!FUNC1())
			break;
	if (FUNC1())
		return 0;

	/*
	 * Feels like a real count / compare timer.
	 */
	return 1;
}