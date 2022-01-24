#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct rename_expected {size_t idx; size_t len; int /*<<< orphan*/ * targets; int /*<<< orphan*/ * sources; int /*<<< orphan*/ * status; } ;
struct TYPE_6__ {int /*<<< orphan*/  path; } ;
struct TYPE_5__ {int /*<<< orphan*/  path; } ;
struct TYPE_7__ {TYPE_2__ new_file; TYPE_1__ old_file; int /*<<< orphan*/  status; } ;
typedef  TYPE_3__ git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC4(const git_diff_delta *delta, float progress, void *p)
{
	struct rename_expected *expected = p;

	FUNC0(progress);

	FUNC1(expected->idx < expected->len);

	FUNC2(delta->status, expected->status[expected->idx]);

	FUNC1(FUNC3(expected->sources[expected->idx],
		delta->old_file.path) == 0);
	FUNC1(FUNC3(expected->targets[expected->idx],
		delta->new_file.path) == 0);

	expected->idx++;

	return 0;
}