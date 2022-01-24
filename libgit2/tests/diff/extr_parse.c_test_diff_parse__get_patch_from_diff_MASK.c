#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_patch ;
struct TYPE_8__ {int /*<<< orphan*/  flags; } ;
typedef  TYPE_1__ git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
struct TYPE_9__ {int /*<<< orphan*/  size; int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_FORMAT_PATCH ; 
 TYPE_1__ GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  GIT_DIFF_SHOW_BINARY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/ * FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *,char*) ; 

void FUNC15(void)
{
	git_repository *repo;
	git_diff *computed, *parsed;
	git_tree *a, *b;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;
	git_buf computed_buf = GIT_BUF_INIT;
	git_patch *patch_computed, *patch_parsed;

	repo = FUNC4("diff");

	opts.flags = GIT_DIFF_SHOW_BINARY;

	FUNC0((a = FUNC14(repo,
		"d70d245ed97ed2aa596dd1af6536e4bfdb047b69")) != NULL);
	FUNC0((b = FUNC14(repo,
		"7a9e0b02e63179929fed24f0a3e0f19168114d10")) != NULL);

	FUNC2(FUNC9(&computed, repo, a, b, &opts));
	FUNC2(FUNC8(&computed_buf,
		computed, GIT_DIFF_FORMAT_PATCH));
	FUNC2(FUNC11(&patch_computed, computed, 0));

	FUNC2(FUNC7(&parsed,
		computed_buf.ptr, computed_buf.size));
	FUNC2(FUNC11(&patch_parsed, parsed, 0));

	FUNC1(
		FUNC12(patch_computed),
		FUNC12(patch_parsed));

	FUNC10(patch_computed);
	FUNC10(patch_parsed);

	FUNC13(a);
	FUNC13(b);

	FUNC6(computed);
	FUNC6(parsed);

	FUNC5(&computed_buf);

	FUNC3();
}