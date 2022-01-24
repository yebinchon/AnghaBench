#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {char* path; int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTS_ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_THEIR_OID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__ const*) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC15(void)
{
	git_index_entry ancestor_entry, our_entry, their_entry;
	const git_index_entry *conflict_entry[3];

	FUNC1(FUNC11(repo_index) == 8);

	FUNC14(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC14(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC14(&their_entry, 0x0, sizeof(git_index_entry));

	FUNC5("./mergedrepo/test-one.txt", "new-file\n");
	FUNC6(FUNC7(repo_index, "test-one.txt"));
	FUNC1(FUNC11(repo_index) == 9);

	ancestor_entry.path = "test-one.txt";
	ancestor_entry.mode = 0100644;
	FUNC0(&ancestor_entry, 3);
	FUNC13(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);

	our_entry.path = "test-one.txt";
	our_entry.mode = 0100644;
	FUNC0(&our_entry, 1);
	FUNC13(&our_entry.id, CONFLICTS_ONE_OUR_OID);

	their_entry.path = "test-one.txt";
	their_entry.mode = 0100644;
	FUNC0(&their_entry, 2);
	FUNC13(&their_entry.id, CONFLICTS_ONE_THEIR_OID);

	FUNC6(FUNC8(repo_index, &ancestor_entry, &our_entry, &their_entry));

	FUNC1(FUNC11(repo_index) == 11);

	FUNC4(NULL, FUNC12(repo_index, "test-one.txt", 0));

	FUNC6(FUNC9(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], repo_index, "test-one.txt"));

	FUNC3(&ancestor_entry.id, &conflict_entry[0]->id);
	FUNC2(1, FUNC10(conflict_entry[0]));
	FUNC3(&our_entry.id, &conflict_entry[1]->id);
	FUNC2(2, FUNC10(conflict_entry[1]));
	FUNC3(&their_entry.id, &conflict_entry[2]->id);
	FUNC2(3, FUNC10(conflict_entry[2]));
}