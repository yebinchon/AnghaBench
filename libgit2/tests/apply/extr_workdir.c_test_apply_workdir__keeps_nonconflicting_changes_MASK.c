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
typedef  int /*<<< orphan*/  workdir_expected ;
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 int /*<<< orphan*/  DIFF_MODIFY_TWO_FILES ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_WORKDIR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct merge_index_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 

void FUNC9(void)
{
	git_diff *diff;

	struct merge_index_entry workdir_expected[] = {
		{ 0100644, "ffb36e513f5fdf8a6ba850a20142676a2ac4807d", 0, "asparagus.txt" },
		{ 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
		{ 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
		{ 0100644, "f75ba05f340c51065cbea2e1fdbfe5fe13144c97", 0, "gravy.txt" },
		{ 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
	};
	size_t workdir_expected_cnt = sizeof(workdir_expected) /
	    sizeof(struct merge_index_entry);

	FUNC2("merge-recursive/oyster.txt");
	FUNC1("merge-recursive/gravy.txt", "Hello, world.\n");

	FUNC0(FUNC5(&diff,
		DIFF_MODIFY_TWO_FILES, FUNC6(DIFF_MODIFY_TWO_FILES)));
	FUNC0(FUNC3(repo, diff, GIT_APPLY_LOCATION_WORKDIR, NULL));

	FUNC8(repo);
	FUNC7(repo, workdir_expected, workdir_expected_cnt);

	FUNC4(diff);
}