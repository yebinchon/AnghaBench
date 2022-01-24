#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_index ;
struct TYPE_5__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_REVERSE ; 
 int /*<<< orphan*/  _a ; 
 int /*<<< orphan*/  _b ; 
 int /*<<< orphan*/  _repo ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 () ; 

__attribute__((used)) static void *FUNC13(void *arg)
{
	int thread = *(int *)arg;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	git_index *idx = NULL;
	git_repository *repo;

	FUNC0(FUNC10(&repo, FUNC11(_repo)));
	FUNC0(FUNC9(&idx, repo));

	/* have first thread altering the index as we go */
	if (thread == 0) {
		int i;

		for (i = 0; i < 300; ++i) {
			switch (i & 0x03) {
			case 0: (void)FUNC5(idx, "new_file"); break;
			case 1: (void)FUNC7(idx, "modified_file"); break;
			case 2: (void)FUNC7(idx, "new_file"); break;
			case 3: (void)FUNC5(idx, "modified_file"); break;
			}
			FUNC12();
		}

		goto done;
	}

	/* only use explicit index in this test to prevent reloading */

	switch (thread & 0x03) {
	case 0: /* diff index to workdir */;
		FUNC0(FUNC2(&diff, repo, idx, &opts));
		break;
	case 1: /* diff tree 'a' to index */;
		FUNC0(FUNC3(&diff, repo, _a, idx, &opts));
		break;
	case 2: /* diff tree 'b' to index */;
		FUNC0(FUNC3(&diff, repo, _b, idx, &opts));
		break;
	case 3: /* diff index to workdir reversed */;
		opts.flags |= GIT_DIFF_REVERSE;
		FUNC0(FUNC2(&diff, repo, idx, &opts));
		break;
	}

	/* results will be unpredictable with index modifier thread running */

	FUNC1(diff);

done:
	FUNC6(idx);
	FUNC8(repo);
	FUNC4();

	return arg;
}