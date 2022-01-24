#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  int32_t ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_2__ {int status; } ;

/* Variables and functions */
#define  GIT_DELTA_ADDED 130 
#define  GIT_DELTA_DELETED 129 
#define  GIT_DELTA_MODIFIED 128 
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  _a ; 
 int /*<<< orphan*/  _b ; 
 int /*<<< orphan*/ * _counts ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 size_t FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void *FUNC15(void *arg)
{
	int thread = *(int *)arg;
	git_repository *repo;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	size_t i;
	int exp[4] = { 0, 0, 0, 0 };

	FUNC1(FUNC13(&repo, FUNC14(_repo)));

	switch (thread & 0x03) {
	case 0: /* diff index to workdir */;
		FUNC1(FUNC6(&diff, repo, NULL, &opts));
		break;
	case 1: /* diff tree 'a' to index */;
		FUNC1(FUNC8(&diff, repo, _a, NULL, &opts));
		break;
	case 2: /* diff tree 'b' to index */;
		FUNC1(FUNC8(&diff, repo, _b, NULL, &opts));
		break;
	case 3: /* diff index to workdir (explicit index) */;
		{
			git_index *idx;
			FUNC1(FUNC12(&idx, repo));
			FUNC1(FUNC6(&diff, repo, idx, &opts));
			FUNC10(idx);
			break;
		}
	}

	/* keep some diff stats to make sure results are as expected */

	i = FUNC7(diff);
	FUNC2(&_counts[0], (int32_t)i);
	exp[0] = (int)i;

	while (i > 0) {
		switch (FUNC5(diff, --i)->status) {
		case GIT_DELTA_MODIFIED: exp[1]++; FUNC3(&_counts[1]); break;
		case GIT_DELTA_ADDED:    exp[2]++; FUNC3(&_counts[2]); break;
		case GIT_DELTA_DELETED:  exp[3]++; FUNC3(&_counts[3]); break;
		default: break;
		}
	}

	switch (thread & 0x03) {
	case 0: case 3:
		FUNC0(8, exp[0]); FUNC0(4, exp[1]);
		FUNC0(0, exp[2]); FUNC0(4, exp[3]);
		break;
	case 1:
		FUNC0(12, exp[0]); FUNC0(3, exp[1]);
		FUNC0(7, exp[2]); FUNC0(2, exp[3]);
		break;
	case 2:
		FUNC0(8, exp[0]); FUNC0(3, exp[1]);
		FUNC0(3, exp[2]); FUNC0(2, exp[3]);
		break;
	}

	FUNC4(diff);
	FUNC11(repo);
	FUNC9();

	return arg;
}