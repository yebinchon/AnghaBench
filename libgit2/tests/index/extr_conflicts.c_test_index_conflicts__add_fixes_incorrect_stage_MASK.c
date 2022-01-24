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
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ ,char*) ; 
 int FUNC5 (TYPE_1__ const*) ; 
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
	FUNC0(&ancestor_entry, 3);
	FUNC7(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);

	our_entry.path = "test-one.txt";
	our_entry.mode = 0100644;
	FUNC0(&our_entry, 1);
	FUNC7(&our_entry.id, CONFLICTS_ONE_OUR_OID);

	their_entry.path = "test-one.txt";
	their_entry.mode = 0100644;
	FUNC0(&their_entry, 2);
	FUNC7(&their_entry.id, CONFLICTS_ONE_THEIR_OID);

	FUNC2(FUNC3(repo_index, &ancestor_entry, &our_entry, &their_entry));

	FUNC1(FUNC6(repo_index) == 11);

	FUNC2(FUNC4(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], repo_index, "test-one.txt"));

	FUNC1(FUNC5(conflict_entry[0]) == 1);
	FUNC1(FUNC5(conflict_entry[1]) == 2);
	FUNC1(FUNC5(conflict_entry[2]) == 3);
}