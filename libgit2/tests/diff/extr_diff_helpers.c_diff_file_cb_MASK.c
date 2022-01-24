#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
struct TYPE_7__ {size_t status; int flags; TYPE_1__ old_file; } ;
typedef  TYPE_2__ git_diff_delta ;
struct TYPE_8__ {size_t files; int* file_status; int /*<<< orphan*/  files_binary; int /*<<< orphan*/ * statuses; int /*<<< orphan*/ * names; scalar_t__ debug; } ;
typedef  TYPE_3__ diff_expects ;

/* Variables and functions */
 size_t GIT_DELTA_CONFLICTED ; 
 int GIT_DIFF_FLAG_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_2__ const*,float) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(
	const git_diff_delta *delta,
	float progress,
	void *payload)
{
	diff_expects *e = payload;

	if (e->debug)
		FUNC3(stderr, delta, progress);

	if (e->names)
		FUNC2(e->names[e->files], delta->old_file.path);
	if (e->statuses)
		FUNC1(e->statuses[e->files], (int)delta->status);

	e->files++;

	if ((delta->flags & GIT_DIFF_FLAG_BINARY) != 0)
		e->files_binary++;

	FUNC0(delta->status <= GIT_DELTA_CONFLICTED);

	e->file_status[delta->status] += 1;

	return 0;
}