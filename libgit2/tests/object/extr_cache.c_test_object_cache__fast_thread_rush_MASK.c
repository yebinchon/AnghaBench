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
 int REPEAT ; 
 int THREADCOUNT ; 
 int* FUNC0 (int*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int* (*) (int*),int*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,void**) ; 

void FUNC9(void)
{
	int try, th, data[THREADCOUNT*2];
#ifdef GIT_THREADS
	git_thread t[THREADCOUNT*2];
#endif

	for (try = 0; try < REPEAT; ++try) {
		FUNC4(FUNC6(&g_repo, FUNC3("testrepo.git")));

		for (th = 0; th < THREADCOUNT*2; ++th) {
			data[th] = th;
#ifdef GIT_THREADS
			cl_git_pass(
				git_thread_create(&t[th], cache_quick, &data[th]));
#else
			FUNC1(FUNC0(&data[th]) == &data[th]);
#endif
		}

#ifdef GIT_THREADS
		for (th = 0; th < THREADCOUNT*2; ++th) {
			void *rval;
			cl_git_pass(git_thread_join(&t[th], &rval));
			cl_assert_equal_i(th, *((int *)rval));
		}
#endif

		FUNC5(g_repo);
		g_repo = NULL;
	}
}