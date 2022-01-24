#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  delta; int /*<<< orphan*/  diff_opts; int /*<<< orphan*/  repo; } ;
struct TYPE_10__ {size_t delta_index; TYPE_1__ base; int /*<<< orphan*/  nfile; int /*<<< orphan*/  ofile; TYPE_3__* diff; } ;
typedef  TYPE_2__ git_patch_generated ;
struct TYPE_11__ {int /*<<< orphan*/  opts; int /*<<< orphan*/  deltas; int /*<<< orphan*/  repo; } ;
typedef  TYPE_3__ git_diff ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(
	git_patch_generated *patch, git_diff *diff, size_t delta_index)
{
	int error = 0;

	FUNC2(patch, 0, sizeof(*patch));

	patch->diff = diff;
	patch->base.repo = diff->repo;
	patch->base.delta = FUNC1(&diff->deltas, delta_index);
	patch->delta_index = delta_index;

	if ((error = FUNC4(
			&patch->base.diff_opts, &diff->opts)) < 0 ||
		(error = FUNC0(
			&patch->ofile, diff, patch->base.delta, true)) < 0 ||
		(error = FUNC0(
			&patch->nfile, diff, patch->base.delta, false)) < 0)
		return error;

	FUNC3(patch);

	return 0;
}