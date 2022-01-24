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
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_6__ {int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;
struct TYPE_7__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_3__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_blob ;

/* Variables and functions */
 int GIT_DELTA_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (size_t*,size_t*,size_t*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC11(
	git_patch *p, git_blob *a, git_blob *b,
	int hunks, int l0, int l1, int ctxt, int adds, int dels)
{
	const git_diff_delta *delta;
	size_t tc, ta, td;

	FUNC0(p != NULL);

	delta = FUNC7(p);
	FUNC0(delta != NULL);

	FUNC1(GIT_DELTA_MODIFIED, delta->status);
	FUNC2(FUNC5(a), &delta->old_file.id);
	FUNC3(FUNC6(a), delta->old_file.size);
	FUNC2(FUNC5(b), &delta->new_file.id);
	FUNC3(FUNC6(b), delta->new_file.size);

	FUNC1(hunks, (int)FUNC9(p));

	if (hunks > 0)
		FUNC1(l0, FUNC10(p, 0));
	if (hunks > 1)
		FUNC1(l1, FUNC10(p, 1));

	FUNC4(FUNC8(&tc, &ta, &td, p));
	FUNC1(ctxt, (int)tc);
	FUNC1(adds, (int)ta);
	FUNC1(dels, (int)td);
}