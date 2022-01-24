#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_13__ {int /*<<< orphan*/  pool; } ;
struct TYPE_14__ {TYPE_3__ base; } ;
typedef  TYPE_4__ git_diff_generated ;
struct TYPE_12__ {int /*<<< orphan*/ * path; } ;
struct TYPE_11__ {int /*<<< orphan*/ * path; } ;
struct TYPE_15__ {int status; TYPE_2__ old_file; TYPE_1__ new_file; } ;
typedef  TYPE_5__ git_diff_delta ;
typedef  int git_delta_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (TYPE_4__*,int /*<<< orphan*/ ) ; 
#define  GIT_DELTA_ADDED 129 
#define  GIT_DELTA_DELETED 128 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 TYPE_5__* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_5__*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char const*) ; 

__attribute__((used)) static git_diff_delta *FUNC4(
	git_diff_generated *diff,
	git_delta_t status,
	const char *path)
{
	git_diff_delta *delta = FUNC1(1, sizeof(git_diff_delta));
	if (!delta)
		return NULL;

	delta->old_file.path = FUNC3(&diff->base.pool, path);
	if (delta->old_file.path == NULL) {
		FUNC2(delta);
		return NULL;
	}

	delta->new_file.path = delta->old_file.path;

	if (FUNC0(diff, GIT_DIFF_REVERSE)) {
		switch (status) {
		case GIT_DELTA_ADDED:   status = GIT_DELTA_DELETED; break;
		case GIT_DELTA_DELETED: status = GIT_DELTA_ADDED; break;
		default: break; /* leave other status values alone */
		}
	}
	delta->status = status;

	return delta;
}