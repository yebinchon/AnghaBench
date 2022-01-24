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
struct kernel_param {int dummy; } ;

/* Variables and functions */
 int EINVAL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int cmm_disabled ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmm_thread ; 
 int /*<<< orphan*/ * cmm_thread_ptr ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  loaned_pages ; 
 int FUNC5 (char const*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC6(const char *val, const struct kernel_param *kp)
{
	int disable = FUNC5(val, NULL, 10);

	if (disable != 0 && disable != 1)
		return -EINVAL;

	if (disable && !cmm_disabled) {
		if (cmm_thread_ptr)
			FUNC4(cmm_thread_ptr);
		cmm_thread_ptr = NULL;
		FUNC2(loaned_pages);
	} else if (!disable && cmm_disabled) {
		cmm_thread_ptr = FUNC3(cmm_thread, NULL, "cmmthread");
		if (FUNC0(cmm_thread_ptr))
			return FUNC1(cmm_thread_ptr);
	}

	cmm_disabled = disable;
	return 0;
}