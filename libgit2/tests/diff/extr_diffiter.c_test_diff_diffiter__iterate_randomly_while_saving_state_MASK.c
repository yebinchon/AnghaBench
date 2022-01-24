#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  patches ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_6__ {int context_lines; int interhunk_lines; int flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_7__ {int /*<<< orphan*/  lines; int /*<<< orphan*/  hunks; int /*<<< orphan*/  files; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ diff_expects ;

/* Variables and functions */
 int GIT_DIFF_INCLUDE_IGNORED ; 
 int GIT_DIFF_INCLUDE_UNTRACKED ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int PATCH_CACHE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 size_t FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int) ; 
 int FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 (int) ; 

void FUNC13(void)
{
	git_repository *repo = FUNC3("status");
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_diff *diff = NULL;
	diff_expects exp = {0};
	git_patch *patches[PATCH_CACHE];
	size_t p, d, num_d;

	FUNC10(patches, 0, sizeof(patches));

	opts.context_lines = 3;
	opts.interhunk_lines = 1;
	opts.flags |= GIT_DIFF_INCLUDE_IGNORED | GIT_DIFF_INCLUDE_UNTRACKED;

	FUNC2(FUNC5(&diff, repo, NULL, &opts));

	num_d = FUNC6(diff);

	/* To make sure that references counts work for diff and patch objects,
	 * this generates patches and randomly caches them.  Only when the patch
	 * is removed from the cache are hunks and lines counted.  At the end,
	 * there are still patches in the cache, so free the diff and try to
	 * process remaining patches after the diff is freed.
	 */

	FUNC12(121212);
	p = FUNC11() % PATCH_CACHE;

	for (d = 0; d < num_d; ++d) {
		/* take old patch */
		git_patch *patch = patches[p];
		patches[p] = NULL;

		/* cache new patch */
		FUNC2(FUNC8(&patches[p], diff, d));
		FUNC0(patches[p] != NULL);

		/* process old patch if non-NULL */
		if (patch != NULL) {
			FUNC9(patch, &exp);
			FUNC7(patch);
		}

		p = FUNC11() % PATCH_CACHE;
	}

	/* free diff list now - refcounts should keep things safe */
	FUNC4(diff);

	/* process remaining unprocessed patches */
	for (p = 0; p < PATCH_CACHE; p++) {
		git_patch *patch = patches[p];

		if (patch != NULL) {
			FUNC9(patch, &exp);
			FUNC7(patch);
		}
	}

	/* hopefully it all still added up right */
	FUNC1(13, exp.files);
	FUNC1(8, exp.hunks);
	FUNC1(14, exp.lines);
}