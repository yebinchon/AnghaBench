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
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(
	git_commit **ancestor,
	const git_commit *commit,
	unsigned int n)
{
	git_commit *current, *parent = NULL;
	int error;

	FUNC0(ancestor && commit);

	if (FUNC1(&current, (git_commit *)commit) < 0)
		return -1;

	if (n == 0) {
		*ancestor = current;
		return 0;
	}

	while (n--) {
		error = FUNC3(&parent, current, 0);

		FUNC2(current);

		if (error < 0)
			return error;

		current = parent;
	}

	*ancestor = parent;
	return 0;
}