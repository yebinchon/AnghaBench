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
typedef  int /*<<< orphan*/  git_patch ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_buf ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 int FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

int FUNC4(
	git_buf *out,
	git_diff *diff)
{
	size_t i, deltas;
	int error = 0;

	deltas = FUNC0(diff);

	for (i = 0; i < deltas; ++i) {
		git_patch *patch = NULL;

		if ((error = FUNC2(&patch, diff, i)) >= 0)
			error = FUNC3(out, patch);

		FUNC1(patch);

		if (error < 0)
			break;
	}

	return error;
}