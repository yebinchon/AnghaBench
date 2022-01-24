#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* path; int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTS_ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ ,char*) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC9(void)
{
	git_index_entry ancestor_entry, our_entry, their_entry;
	const git_index_entry *conflict_entry[3];

	FUNC1(FUNC6(repo_index) == 8);

	FUNC8(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC8(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC8(&their_entry, 0x0, sizeof(git_index_entry));

	ancestor_entry.path = "test-one.txt";
	ancestor_entry.mode = 0100644;
	FUNC0(&ancestor_entry, 1);
	FUNC7(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);

	FUNC3(FUNC4(repo_index, &ancestor_entry, NULL, NULL));
	FUNC1(FUNC6(repo_index) == 9);

	FUNC3(FUNC5(&conflict_entry[0], &conflict_entry[1],
		&conflict_entry[2], repo_index, "test-one.txt"));

	FUNC2(&ancestor_entry.id, &conflict_entry[0]->id);
	FUNC1(conflict_entry[1] == NULL);
	FUNC1(conflict_entry[2] == NULL);
}