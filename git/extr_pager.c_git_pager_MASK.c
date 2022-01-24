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
 char* DEFAULT_PAGER ; 
 int /*<<< orphan*/  core_pager_config ; 
 char* FUNC0 (char*) ; 
 char* pager_program ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 

const char *FUNC3(int stdout_is_tty)
{
	const char *pager;

	if (!stdout_is_tty)
		return NULL;

	pager = FUNC0("GIT_PAGER");
	if (!pager) {
		if (!pager_program)
			FUNC1(core_pager_config, NULL);
		pager = pager_program;
	}
	if (!pager)
		pager = FUNC0("PAGER");
	if (!pager)
		pager = DEFAULT_PAGER;
	if (!*pager || !FUNC2(pager, "cat"))
		pager = NULL;

	return pager;
}