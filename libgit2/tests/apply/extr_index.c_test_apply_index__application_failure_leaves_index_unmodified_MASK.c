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
typedef  int /*<<< orphan*/  index_expected ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 char* DIFF_MODIFY_TWO_FILES ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_INDEX ; 
 int /*<<< orphan*/  GIT_EAPPLYFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC9 (char const*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,struct merge_index_entry*,size_t) ; 

void FUNC11(void)
{
	git_diff *diff;
	git_index *index;

	const char *diff_file = DIFF_MODIFY_TWO_FILES;

	struct merge_index_entry index_expected[] = {
		{ 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
		{ 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
		{ 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
		{ 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
		{ 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
	};
	size_t index_expected_cnt = sizeof(index_expected) /
		sizeof(struct merge_index_entry);

	/* mutate the index */
	FUNC1(FUNC8(&index, repo));
	FUNC1(FUNC6(index, "veal.txt", 0));
	FUNC1(FUNC7(index));
	FUNC5(index);

	FUNC1(FUNC4(&diff, diff_file, FUNC9(diff_file)));
	FUNC0(GIT_EAPPLYFAIL, FUNC2(repo, diff, GIT_APPLY_LOCATION_INDEX, NULL));

	FUNC10(repo, index_expected, index_expected_cnt);

	FUNC3(diff);
}