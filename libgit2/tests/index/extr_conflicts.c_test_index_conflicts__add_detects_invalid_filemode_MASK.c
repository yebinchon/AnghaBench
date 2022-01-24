#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* path; int mode; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTS_ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_THEIR_OID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC7(void)
{
	git_index_entry ancestor_entry, our_entry, their_entry;
	git_index_entry *conflict_entry[3];
	int i;

	FUNC1(FUNC4(repo_index) == 8);

	FUNC6(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC6(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC6(&their_entry, 0x0, sizeof(git_index_entry));

	conflict_entry[0] = &ancestor_entry;
	conflict_entry[1] = &our_entry;
	conflict_entry[2] = &their_entry;

	for (i = 0; i < 3; i++) {
		ancestor_entry.path = "test-one.txt";
		ancestor_entry.mode = 0100644;
		FUNC0(&ancestor_entry, 3);
		FUNC5(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);

		our_entry.path = "test-one.txt";
		our_entry.mode = 0100644;
		FUNC0(&our_entry, 1);
		FUNC5(&our_entry.id, CONFLICTS_ONE_OUR_OID);

		their_entry.path = "test-one.txt";
		their_entry.mode = 0100644;
		FUNC0(&their_entry, 2);
		FUNC5(&their_entry.id, CONFLICTS_ONE_THEIR_OID);

		/* Corrupt the conflict entry's mode */
		conflict_entry[i]->mode = 027431745;

		FUNC2(FUNC3(repo_index, &ancestor_entry, &our_entry, &their_entry));
	}

	FUNC1(FUNC4(repo_index) == 8);
}