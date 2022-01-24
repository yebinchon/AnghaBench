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
struct timer_list {int dummy; } ;

/* Variables and functions */
 int HZ ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct timer_list*,unsigned long) ; 
 unsigned long FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned long) ; 
 int check_interval ; 
 int /*<<< orphan*/  cpu_info ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct timer_list*) ; 
 unsigned long FUNC5 (unsigned long,unsigned long) ; 
 unsigned long FUNC6 (unsigned long) ; 
 scalar_t__ FUNC7 (struct timer_list*) ; 
 scalar_t__ FUNC8 () ; 
 int /*<<< orphan*/  mce_next_interval ; 
 scalar_t__ FUNC9 () ; 
 int /*<<< orphan*/  mce_poll_banks ; 
 int /*<<< orphan*/  mce_timer ; 
 unsigned long FUNC10 (unsigned long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 struct timer_list* FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC13(struct timer_list *t)
{
	struct timer_list *cpu_t = FUNC12(&mce_timer);
	unsigned long iv;

	FUNC0(cpu_t != t);

	iv = FUNC2(mce_next_interval);

	if (FUNC7(FUNC12(&cpu_info))) {
		FUNC4(0, FUNC12(&mce_poll_banks));

		if (FUNC8()) {
			iv = FUNC6(iv);
			goto done;
		}
	}

	/*
	 * Alert userspace if needed. If we logged an MCE, reduce the polling
	 * interval, otherwise increase the polling interval.
	 */
	if (FUNC9())
		iv = FUNC5(iv / 2, (unsigned long) HZ/100);
	else
		iv = FUNC10(iv * 2, FUNC11(check_interval * HZ));

done:
	FUNC3(mce_next_interval, iv);
	FUNC1(t, iv);
}