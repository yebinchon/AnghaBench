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
 int /*<<< orphan*/  FUNC0 (char const**) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const**,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 () ; 

void FUNC3(void)
{
	const char *one_path_without_slash[] = { "sm_changed_head" };
	const char *one_path_with_slash[] = { "sm_changed_head/" };
	const char *many_paths_without_slashes[] = { "sm_changed_head", "sm_changed_index" };
	const char *many_paths_with_slashes[] = { "sm_changed_head/", "sm_changed_index/" };

	g_repo = FUNC2();

	FUNC1(g_repo, one_path_without_slash, FUNC0(one_path_without_slash));
	FUNC1(g_repo, one_path_with_slash, FUNC0(one_path_with_slash));
	FUNC1(g_repo, many_paths_without_slashes, FUNC0(many_paths_without_slashes));
	FUNC1(g_repo, many_paths_with_slashes, FUNC0(many_paths_with_slashes));
}