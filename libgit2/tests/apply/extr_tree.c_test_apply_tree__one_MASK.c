#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_tree ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff_options ;
typedef  int /*<<< orphan*/  git_diff ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIFF_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,struct merge_index_entry*,int) ; 
 int /*<<< orphan*/  repo ; 

void FUNC11(void)
{
	git_oid a_oid, b_oid;
	git_commit *a_commit, *b_commit;
	git_tree *a_tree, *b_tree;
	git_diff *diff;
	git_index *index = NULL;
	git_diff_options opts = GIT_DIFF_OPTIONS_INIT;

	struct merge_index_entry expected[] = {
		{ 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
		{ 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
		{ 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
		{ 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
		{ 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
		{ 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
	};

	FUNC8(&a_oid, "539bd011c4822c560c1d17cab095006b7a10f707");
	FUNC8(&b_oid, "7c7bf85e978f1d18c0566f702d2cb7766b9c8d4f");

	FUNC0(FUNC3(&a_commit, repo, &a_oid));
	FUNC0(FUNC3(&b_commit, repo, &b_oid));

	FUNC0(FUNC4(&a_tree, a_commit));
	FUNC0(FUNC4(&b_tree, b_commit));

	FUNC0(FUNC6(&diff, repo, a_tree, b_tree, &opts));

	FUNC0(FUNC1(&index, repo, a_tree, diff, NULL));
	FUNC10(index, expected, 6);

	FUNC7(index);
	FUNC5(diff);
	FUNC9(a_tree);
	FUNC9(b_tree);
	FUNC2(a_commit);
	FUNC2(b_commit);
}