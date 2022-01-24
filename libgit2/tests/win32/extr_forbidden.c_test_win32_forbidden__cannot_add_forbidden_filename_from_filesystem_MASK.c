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
typedef  int /*<<< orphan*/  git_index ;

/* Variables and functions */
 int O_CREAT ; 
 int O_RDWR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_index *index;

	/* since our function calls are very low-level, we can create `aux.`,
	 * but we should not be able to add it to the index
	 */
	FUNC1(FUNC6(&index, repo));
	FUNC2("win32-forbidden/aux.", "foo\n", 4, O_RDWR | O_CREAT, 0666);

#ifdef GIT_WIN32
	cl_git_fail(git_index_add_bypath(index, "aux."));
#else
	FUNC1(FUNC4(index, "aux."));
#endif

	FUNC3(FUNC7("win32-forbidden/aux."));
	FUNC5(index);
}