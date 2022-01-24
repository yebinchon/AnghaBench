#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/ * theirs; int /*<<< orphan*/ * ours; int /*<<< orphan*/ * ancestor; } ;
typedef  TYPE_1__ git_index_name_entry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo_index ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,char*) ; 

void FUNC9(void)
{
	const git_index_name_entry *conflict_name;

	FUNC1(FUNC3(repo_index, "ancestor", "ours", "theirs"));
	FUNC1(FUNC3(repo_index, "ancestor2", "ours2", NULL));
	FUNC1(FUNC3(repo_index, "ancestor3", NULL, "theirs3"));

	FUNC1(FUNC7(repo_index));
	FUNC2(repo_index);
	FUNC0(FUNC4(repo_index) == 0);

	FUNC1(FUNC6(repo_index, true));
	FUNC0(FUNC4(repo_index) == 3);

	conflict_name = FUNC5(repo_index, 0);
	FUNC0(FUNC8(conflict_name->ancestor, "ancestor") == 0);
	FUNC0(FUNC8(conflict_name->ours, "ours") == 0);
	FUNC0(FUNC8(conflict_name->theirs, "theirs") == 0);

	conflict_name = FUNC5(repo_index, 1);
	FUNC0(FUNC8(conflict_name->ancestor, "ancestor2") == 0);
	FUNC0(FUNC8(conflict_name->ours, "ours2") == 0);
	FUNC0(conflict_name->theirs == NULL);

	conflict_name = FUNC5(repo_index, 2);
	FUNC0(FUNC8(conflict_name->ancestor, "ancestor3") == 0);
	FUNC0(conflict_name->ours == NULL);
	FUNC0(FUNC8(conflict_name->theirs, "theirs3") == 0);
}