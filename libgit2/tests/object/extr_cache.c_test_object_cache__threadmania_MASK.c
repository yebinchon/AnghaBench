#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_thread ;
struct TYPE_2__ {int /*<<< orphan*/ * sha; } ;

/* Variables and functions */
 int REPEAT ; 
 int THREADCOUNT ; 
 void* FUNC0 (void*) ; 
 void* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 TYPE_1__* g_data ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,void* (*) (void*),void*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,void**) ; 

void FUNC12(void)
{
	int try, th, max_i;
	void *data;
	void *(*fn)(void *);

#ifdef GIT_THREADS
	git_thread t[THREADCOUNT];
#endif

	for (max_i = 0; g_data[max_i].sha != NULL; ++max_i)
		/* count up */;

	for (try = 0; try < REPEAT; ++try) {

		FUNC5(FUNC9(&g_repo, FUNC4("testrepo.git")));

		for (th = 0; th < THREADCOUNT; ++th) {
			data = FUNC7(2 * sizeof(int));

			((int *)data)[0] = th;
			((int *)data)[1] = th % max_i;

			fn = (th & 1) ? cache_parsed : cache_raw;

#ifdef GIT_THREADS
			cl_git_pass(git_thread_create(&t[th], fn, data));
#else
			FUNC2(fn(data) == data);
			FUNC6(data);
#endif
		}

#ifdef GIT_THREADS
		for (th = 0; th < THREADCOUNT; ++th) {
			cl_git_pass(git_thread_join(&t[th], &data));
			cl_assert_equal_i(th, ((int *)data)[0]);
			git__free(data);
		}
#endif

		FUNC8(g_repo);
		g_repo = NULL;
	}
}