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
 int GIT_FEATURE_HTTPS ; 
 int GIT_FEATURE_NSEC ; 
 int GIT_FEATURE_SSH ; 
 int GIT_FEATURE_THREADS ; 
 int /*<<< orphan*/  LIBGIT2_VER_MAJOR ; 
 int /*<<< orphan*/  LIBGIT2_VER_MINOR ; 
 int /*<<< orphan*/  LIBGIT2_VER_REVISION ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int*,int*,int*) ; 

void FUNC4(void)
{
	int major, minor, rev, caps;

	FUNC3(&major, &minor, &rev);
	FUNC1(LIBGIT2_VER_MAJOR, major);
	FUNC1(LIBGIT2_VER_MINOR, minor);
	FUNC1(LIBGIT2_VER_REVISION, rev);

	caps = FUNC2();

#ifdef GIT_THREADS
	cl_assert((caps & GIT_FEATURE_THREADS) != 0);
#else
	FUNC0((caps & GIT_FEATURE_THREADS) == 0);
#endif

#ifdef GIT_HTTPS
	cl_assert((caps & GIT_FEATURE_HTTPS) != 0);
#endif

#if defined(GIT_SSH)
	cl_assert((caps & GIT_FEATURE_SSH) != 0);
#else
	FUNC0((caps & GIT_FEATURE_SSH) == 0);
#endif

#if defined(GIT_USE_NSEC)
	cl_assert((caps & GIT_FEATURE_NSEC) != 0);
#else
	FUNC0((caps & GIT_FEATURE_NSEC) == 0);
#endif
}