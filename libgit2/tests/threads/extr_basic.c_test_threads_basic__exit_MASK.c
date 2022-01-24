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
 int /*<<< orphan*/  FUNC0 (int,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  return_normally ; 

void FUNC5(void)
{
#ifndef GIT_THREADS
	FUNC2();
#else
	git_thread thread;
	void *result;

	/* Ensure that the return value of the threadproc is returned. */
	cl_git_pass(git_thread_create(&thread, return_normally, (void *)424242));
	cl_git_pass(git_thread_join(&thread, &result));
	cl_assert_equal_sz(424242, (size_t)result);

	/* Ensure that the return value of `git_thread_exit` is returned. */
	cl_git_pass(git_thread_create(&thread, return_normally, (void *)232323));
	cl_git_pass(git_thread_join(&thread, &result));
	cl_assert_equal_sz(232323, (size_t)result);
#endif
}