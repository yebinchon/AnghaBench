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
typedef  int /*<<< orphan*/  git_thread ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  reinit ; 

void FUNC8(void)
{
#ifdef GIT_THREADS
	git_thread threads[10];
	unsigned i;

	cl_assert_equal_i(2, git_libgit2_init());

	for (i = 0; i < ARRAY_SIZE(threads); i++)
		git_thread_create(&threads[i], reinit, NULL);
	for (i = 0; i < ARRAY_SIZE(threads); i++)
		git_thread_join(&threads[i], NULL);

	cl_assert_equal_i(1, git_libgit2_shutdown());
	cl_sandbox_set_search_path_defaults();
#else
	FUNC3();
#endif
}