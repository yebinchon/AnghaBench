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
struct sleep_stack_data {int dummy; } ;

/* Variables and functions */
#define  ARM64_SSBD_FORCE_ENABLE 129 
#define  ARM64_SSBD_KERNEL 128 
 int EBUSY ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC0 (struct sleep_stack_data*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  __hyp_idmap_text_end ; 
 int /*<<< orphan*/  __hyp_idmap_text_start ; 
 int /*<<< orphan*/  __hyp_text_end ; 
 int /*<<< orphan*/  __hyp_text_start ; 
 int /*<<< orphan*/  __idmap_text_end ; 
 int /*<<< orphan*/  __idmap_text_start ; 
 int /*<<< orphan*/  __mmuoff_data_end ; 
 int /*<<< orphan*/  __mmuoff_data_start ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 () ; 
 scalar_t__ in_suspend ; 
 int /*<<< orphan*/  FUNC9 (unsigned long) ; 
 unsigned long FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  sleep_cpu ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int FUNC13 () ; 

int FUNC14(void)
{
	int ret = 0;
	unsigned long flags;
	struct sleep_stack_data state;

	if (FUNC4()) {
		FUNC11("Can't hibernate: no mechanism to offline secondary CPUs.\n");
		return -EBUSY;
	}

	flags = FUNC10();

	if (FUNC0(&state)) {
		/* make the crash dump kernel image visible/saveable */
		FUNC6();

		sleep_cpu = FUNC12();
		ret = FUNC13();
	} else {
		/* Clean kernel core startup/idle code to PoC*/
		FUNC7(__mmuoff_data_start, __mmuoff_data_end);
		FUNC7(__idmap_text_start, __idmap_text_end);

		/* Clean kvm setup code to PoC? */
		if (FUNC8()) {
			FUNC7(__hyp_idmap_text_start, __hyp_idmap_text_end);
			FUNC7(__hyp_text_start, __hyp_text_end);
		}

		/* make the crash dump kernel image protected again */
		FUNC5();

		/*
		 * Tell the hibernation core that we've just restored
		 * the memory
		 */
		in_suspend = 0;

		sleep_cpu = -EINVAL;
		FUNC1();

		/*
		 * Just in case the boot kernel did turn the SSBD
		 * mitigation off behind our back, let's set the state
		 * to what we expect it to be.
		 */
		switch (FUNC2()) {
		case ARM64_SSBD_FORCE_ENABLE:
		case ARM64_SSBD_KERNEL:
			FUNC3(true);
		}
	}

	FUNC9(flags);

	return ret;
}