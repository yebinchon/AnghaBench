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
 int /*<<< orphan*/  cmm_dev ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmm_mem_isolate_nb ; 
 int /*<<< orphan*/  cmm_mem_nb ; 
 int /*<<< orphan*/  cmm_oom_nb ; 
 int /*<<< orphan*/  cmm_reboot_nb ; 
 scalar_t__ cmm_thread_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  loaned_pages ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(void)
{
	if (cmm_thread_ptr)
		FUNC2(cmm_thread_ptr);
	FUNC5(&cmm_oom_nb);
	FUNC6(&cmm_reboot_nb);
	FUNC4(&cmm_mem_nb);
	FUNC3(&cmm_mem_isolate_nb);
	FUNC0(loaned_pages);
	FUNC1(&cmm_dev);
}