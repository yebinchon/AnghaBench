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
struct TYPE_4__ {int mode; char* path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index ;
typedef  int /*<<< orphan*/  git_diff ;

/* Variables and functions */
 char* DIFF_MODIFY_TWO_FILES ; 
 int /*<<< orphan*/  GIT_APPLY_LOCATION_BOTH ; 
 int /*<<< orphan*/  GIT_EAPPLYFAIL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 

void FUNC13(void)
{
	git_diff *diff;
	git_index *index;
	git_index_entry idx_entry;

	const char *diff_file = DIFF_MODIFY_TWO_FILES;

	/*
	 * Append a line to the end of the file in both the index and the
	 * working directory.  Although the appended line would allow for
	 * patch application in each, the line appended is different in
	 * each, so the application should not be allowed.
	 */
	FUNC0("merge-recursive/asparagus.txt",
	    "This is a modification.\n");

	FUNC2(FUNC10(&index, repo));

	FUNC11(&idx_entry, 0, sizeof(git_index_entry));
	idx_entry.mode = 0100644;
	idx_entry.path = "asparagus.txt";
	FUNC2(FUNC9(&idx_entry.id, "06d3fefb8726ab1099acc76e02dfb85e034b2538"));
	FUNC2(FUNC6(index, &idx_entry));

	FUNC2(FUNC8(index));
	FUNC7(index);

	FUNC2(FUNC5(&diff, diff_file, FUNC12(diff_file)));
	FUNC1(GIT_EAPPLYFAIL, FUNC3(repo, diff, GIT_APPLY_LOCATION_BOTH, NULL));

	FUNC4(diff);
}