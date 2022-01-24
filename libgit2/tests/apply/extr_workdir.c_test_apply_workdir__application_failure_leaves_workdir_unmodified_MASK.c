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
 char* DIFF_MODIFY_TWO_FILES ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_WORKDIR ; 
 int /*<<< orphan*/  GIT_EAPPLYFAIL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,struct merge_index_entry*,size_t) ; 

void FUNC8(void)
{
	git_diff *diff;

	const char *diff_file = DIFF_MODIFY_TWO_FILES;

	struct merge_index_entry workdir_expected[] = {
		{ 0100644, "f51658077d85f2264fa179b4d0848268cb3475c3", 0, "asparagus.txt" },
		{ 0100644, "68f6182f4c85d39e1309d97c7e456156dc9c0096", 0, "beef.txt" },
		{ 0100644, "4b7c5650008b2e747fe1809eeb5a1dde0e80850a", 0, "bouilli.txt" },
		{ 0100644, "c4e6cca3ec6ae0148ed231f97257df8c311e015f", 0, "gravy.txt" },
		{ 0100644, "68af1fc7407fd9addf1701a87eb1c95c7494c598", 0, "oyster.txt" },
		{ 0100644, "8684724651336001c5dbce74bed6736d2443958d", 0, "veal.txt" },
	};
	size_t workdir_expected_cnt = sizeof(workdir_expected) /
		sizeof(struct merge_index_entry);

	/* mutate the workdir */
	FUNC2("merge-recursive/veal.txt",
	    "This is a modification.\n");

	FUNC1(FUNC5(&diff, diff_file, FUNC6(diff_file)));
	FUNC0(GIT_EAPPLYFAIL, FUNC3(repo, diff, GIT_APPLY_LOCATION_WORKDIR, NULL));

	FUNC7(repo, workdir_expected, workdir_expected_cnt);

	FUNC4(diff);
}