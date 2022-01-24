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
typedef  int /*<<< orphan*/  git_strarray ;
typedef  int /*<<< orphan*/  git_pathspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

int FUNC5(git_pathspec **out, const git_strarray *pathspec)
{
	int error = 0;
	git_pathspec *ps = FUNC3(sizeof(git_pathspec));
	FUNC0(ps);

	if ((error = FUNC4(ps, pathspec)) < 0) {
		FUNC2(ps);
		return error;
	}

	FUNC1(ps);
	*out = ps;
	return 0;
}