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
struct TYPE_6__ {int /*<<< orphan*/  id; int /*<<< orphan*/  size; } ;
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  size; } ;
struct TYPE_7__ {int status; TYPE_2__ new_file; TYPE_1__ old_file; } ;
typedef  TYPE_3__ git_diff_delta ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DELTA_UNMODIFIED ; 
 int /*<<< orphan*/ * alien ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * d ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  opts ; 

void FUNC12(void)
{
	git_patch *p;
	const git_diff_delta *delta;

	FUNC4(FUNC9(&p, d, NULL, d, NULL, &opts));
	FUNC0(p != NULL);

	delta = FUNC10(p);
	FUNC0(delta != NULL);
	FUNC1(GIT_DELTA_UNMODIFIED, delta->status);
	FUNC3(delta->old_file.size, FUNC6(d));
	FUNC2(FUNC5(d), &delta->old_file.id);
	FUNC3(delta->new_file.size, FUNC6(d));
	FUNC2(FUNC5(d), &delta->new_file.id);

	FUNC1(0, (int)FUNC11(p));
	FUNC8(p);

	FUNC4(FUNC9(&p, NULL, NULL, NULL, NULL, &opts));
	FUNC0(p != NULL);

	delta = FUNC10(p);
	FUNC0(delta != NULL);
	FUNC1(GIT_DELTA_UNMODIFIED, delta->status);
	FUNC3(0, delta->old_file.size);
	FUNC0(FUNC7(&delta->old_file.id));
	FUNC3(0, delta->new_file.size);
	FUNC0(FUNC7(&delta->new_file.id));

	FUNC1(0, (int)FUNC11(p));
	FUNC8(p);

	FUNC4(FUNC9(&p, alien, NULL, alien, NULL, &opts));
	FUNC0(p != NULL);
	FUNC1(GIT_DELTA_UNMODIFIED, FUNC10(p)->status);
	FUNC1(0, (int)FUNC11(p));
	FUNC8(p);
}