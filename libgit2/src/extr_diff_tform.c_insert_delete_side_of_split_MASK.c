#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_vector ;
struct TYPE_14__ {int /*<<< orphan*/  flags; int /*<<< orphan*/  path; } ;
struct TYPE_11__ {int /*<<< orphan*/  path; } ;
struct TYPE_12__ {int nfiles; TYPE_4__ new_file; TYPE_1__ old_file; int /*<<< orphan*/  status; } ;
typedef  TYPE_2__ git_diff_delta ;
struct TYPE_13__ {int /*<<< orphan*/  pool; } ;
typedef  TYPE_3__ git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DELTA_DELETED ; 
 int /*<<< orphan*/  GIT_DIFF_FLAG_VALID_ID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 TYPE_2__* FUNC1 (TYPE_2__ const*,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC4(
	git_diff *diff, git_vector *onto, const git_diff_delta *delta)
{
	/* make new record for DELETED side of split */
	git_diff_delta *deleted = FUNC1(delta, &diff->pool);
	FUNC0(deleted);

	deleted->status = GIT_DELTA_DELETED;
	deleted->nfiles = 1;
	FUNC3(&deleted->new_file, 0, sizeof(deleted->new_file));
	deleted->new_file.path = deleted->old_file.path;
	deleted->new_file.flags |= GIT_DIFF_FLAG_VALID_ID;

	return FUNC2(onto, deleted);
}