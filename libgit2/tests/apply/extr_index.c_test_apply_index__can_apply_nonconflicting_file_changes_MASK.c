#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct merge_index_entry {int member_0; char* member_1; char* member_3; int /*<<< orphan*/  member_2; } ;
typedef  int /*<<< orphan*/  index_expected ;
struct TYPE_4__ {int mode; char* path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 char* DIFF_MODIFY_TWO_FILES ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_INDEX ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC10 (char const*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,struct merge_index_entry*,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 

void FUNC13(void)
{
	git_diff *diff;
	git_index *index;
	git_index_entry idx_entry;

	const char *diff_file = DIFF_MODIFY_TWO_FILES;

	struct merge_index_entry index_expected[] = {
		{ 0100644, "4f2d1645dee99ced096877911de540c65ade2ef8", 0, "asparagus.txt" },
		{ 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
		{ 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
		{ 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
		{ 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
		{ 0100644, "a7b066537e6be7109abfe4ff97b675d4e077da20", 0, "veal.txt" },
	};
	size_t index_expected_cnt = sizeof(index_expected) /
		sizeof(struct merge_index_entry);

	/*
	 * Replace the index entry with a version that is different than
	 * HEAD but such that the patch still applies cleanly.  This item
	 * has a new line appended.
	 */

	FUNC0(FUNC8(&index, repo));

	FUNC9(&idx_entry, 0, sizeof(git_index_entry));
	idx_entry.mode = 0100644;
	idx_entry.path = "asparagus.txt";
	FUNC0(FUNC7(&idx_entry.id, "06d3fefb8726ab1099acc76e02dfb85e034b2538"));
	FUNC0(FUNC4(index, &idx_entry));

	FUNC0(FUNC6(index));
	FUNC5(index);

	FUNC0(FUNC3(&diff, diff_file, FUNC10(diff_file)));
	FUNC0(FUNC1(repo, diff, GIT_APPLY_LOCATION_INDEX, NULL));

	FUNC11(repo, index_expected, index_expected_cnt);
	FUNC12(repo);

	FUNC2(diff);
}