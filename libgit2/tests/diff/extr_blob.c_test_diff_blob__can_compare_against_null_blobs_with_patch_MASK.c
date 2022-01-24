#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_11__ {scalar_t__ origin; } ;
typedef  TYPE_3__ git_diff_line ;
struct TYPE_10__ {int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  id; } ;
struct TYPE_12__ {int status; int flags; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_4__ git_diff_delta ;
typedef  int /*<<< orphan*/  git_blob ;
struct TYPE_13__ {int /*<<< orphan*/  flags; } ;

/* Variables and functions */
 int GIT_DELTA_ADDED ; 
 int GIT_DELTA_DELETED ; 
 int GIT_DIFF_FLAG_BINARY ; 
 int GIT_DIFF_LINE_ADDITION ; 
 int GIT_DIFF_LINE_DELETION ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/ * alien ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * d ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_5__*) ; 
 TYPE_4__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__ const**,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_5__ opts ; 

void FUNC14(void)
{
	git_blob *e = NULL;
	git_patch *p;
	const git_diff_delta *delta;
	const git_diff_line *line;
	int l, max_l;

	FUNC4(FUNC9(&p, d, NULL, e, NULL, &opts));

	FUNC0(p != NULL);

	delta = FUNC10(p);
	FUNC0(delta != NULL);
	FUNC1(GIT_DELTA_DELETED, delta->status);
	FUNC2(FUNC5(d), &delta->old_file.id);
	FUNC3(FUNC6(d), delta->old_file.size);
	FUNC0(FUNC7(&delta->new_file.id));
	FUNC3(0, delta->new_file.size);

	FUNC1(1, (int)FUNC12(p));
	FUNC1(14, FUNC13(p, 0));

	max_l = FUNC13(p, 0);
	for (l = 0; l < max_l; ++l) {
		FUNC4(FUNC11(&line, p, 0, l));
		FUNC1(GIT_DIFF_LINE_DELETION, (int)line->origin);
	}

	FUNC8(p);

	opts.flags |= GIT_DIFF_REVERSE;

	FUNC4(FUNC9(&p, d, NULL, e, NULL, &opts));

	FUNC0(p != NULL);

	delta = FUNC10(p);
	FUNC0(delta != NULL);
	FUNC1(GIT_DELTA_ADDED, delta->status);
	FUNC0(FUNC7(&delta->old_file.id));
	FUNC3(0, delta->old_file.size);
	FUNC2(FUNC5(d), &delta->new_file.id);
	FUNC3(FUNC6(d), delta->new_file.size);

	FUNC1(1, (int)FUNC12(p));
	FUNC1(14, FUNC13(p, 0));

	max_l = FUNC13(p, 0);
	for (l = 0; l < max_l; ++l) {
		FUNC4(FUNC11(&line, p, 0, l));
		FUNC1(GIT_DIFF_LINE_ADDITION, (int)line->origin);
	}

	FUNC8(p);

	opts.flags ^= GIT_DIFF_REVERSE;

	FUNC4(FUNC9(&p, alien, NULL, NULL, NULL, &opts));

	FUNC0(p != NULL);

	delta = FUNC10(p);
	FUNC0(delta != NULL);
	FUNC1(GIT_DELTA_DELETED, delta->status);
	FUNC0((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);

	FUNC1(0, (int)FUNC12(p));

	FUNC8(p);

	FUNC4(FUNC9(&p, NULL, NULL, alien, NULL, &opts));

	FUNC0(p != NULL);

	delta = FUNC10(p);
	FUNC0(delta != NULL);
	FUNC1(GIT_DELTA_ADDED, delta->status);
	FUNC0((delta->flags & GIT_DIFF_FLAG_BINARY) != 0);

	FUNC1(0, (int)FUNC12(p));

	FUNC8(p);
}