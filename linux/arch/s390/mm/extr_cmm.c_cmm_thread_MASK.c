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
 int ERESTARTSYS ; 
 scalar_t__ FUNC0 (int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,scalar_t__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cmm_page_list ; 
 scalar_t__ cmm_pages ; 
 scalar_t__ cmm_pages_target ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  cmm_suspended ; 
 int /*<<< orphan*/  cmm_thread_wait ; 
 int /*<<< orphan*/  cmm_timed_page_list ; 
 scalar_t__ cmm_timed_pages ; 
 scalar_t__ cmm_timed_pages_target ; 
 int /*<<< orphan*/  cmm_timer ; 
 scalar_t__ FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC6(void *dummy)
{
	int rc;

	while (1) {
		rc = FUNC5(cmm_thread_wait,
			(!cmm_suspended && (cmm_pages != cmm_pages_target ||
			 cmm_timed_pages != cmm_timed_pages_target)) ||
			 FUNC3());
		if (FUNC3() || rc == -ERESTARTSYS) {
			cmm_pages_target = cmm_pages;
			cmm_timed_pages_target = cmm_timed_pages;
			break;
		}
		if (cmm_pages_target > cmm_pages) {
			if (FUNC0(1, &cmm_pages, &cmm_page_list))
				cmm_pages_target = cmm_pages;
		} else if (cmm_pages_target < cmm_pages) {
			FUNC1(1, &cmm_pages, &cmm_page_list);
		}
		if (cmm_timed_pages_target > cmm_timed_pages) {
			if (FUNC0(1, &cmm_timed_pages,
					   &cmm_timed_page_list))
				cmm_timed_pages_target = cmm_timed_pages;
		} else if (cmm_timed_pages_target < cmm_timed_pages) {
			FUNC1(1, &cmm_timed_pages,
				       &cmm_timed_page_list);
		}
		if (cmm_timed_pages > 0 && !FUNC4(&cmm_timer))
			FUNC2();
	}
	return 0;
}