#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_10__ {char const* path; int /*<<< orphan*/  id; void* mode; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTS_ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_THEIR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_THEIR_OID ; 
 void* GIT_FILEMODE_BLOB ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GIT_INDEX_STAGE_ANCESTOR ; 
 int /*<<< orphan*/  GIT_INDEX_STAGE_OURS ; 
 int /*<<< orphan*/  GIT_INDEX_STAGE_THEIRS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  repo ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC9(void)
{
	const git_index_entry *conflict_entry[3];
	git_oid oid;
	const char *upper_case = "DIFFERS-IN-CASE.TXT";
	const char *mixed_case = "Differs-In-Case.txt";
	const char *correct_case;
	bool ignorecase = FUNC4(repo, "core.ignorecase");

	git_index_entry ancestor_entry, our_entry, their_entry;

	FUNC8(&ancestor_entry, 0x0, sizeof(git_index_entry));
	FUNC8(&our_entry, 0x0, sizeof(git_index_entry));
	FUNC8(&their_entry, 0x0, sizeof(git_index_entry));

	ancestor_entry.path = upper_case;
	FUNC0(&ancestor_entry, GIT_INDEX_STAGE_ANCESTOR);
	FUNC7(&ancestor_entry.id, CONFLICTS_ONE_ANCESTOR_OID);
	ancestor_entry.mode = GIT_FILEMODE_BLOB;

	our_entry.path = upper_case;
	FUNC0(&our_entry, GIT_INDEX_STAGE_OURS);
	FUNC7(&our_entry.id, CONFLICTS_ONE_OUR_OID);
	our_entry.mode = GIT_FILEMODE_BLOB;

	their_entry.path = upper_case;
	FUNC0(&their_entry, GIT_INDEX_STAGE_THEIRS);
	FUNC7(&their_entry.id, CONFLICTS_ONE_THEIR_OID);
	their_entry.mode = GIT_FILEMODE_BLOB;

	FUNC3(FUNC5(repo_index,
		&ancestor_entry, &our_entry, &their_entry));

	ancestor_entry.path = mixed_case;
	FUNC0(&ancestor_entry, GIT_INDEX_STAGE_ANCESTOR);
	FUNC7(&ancestor_entry.id, CONFLICTS_TWO_ANCESTOR_OID);
	ancestor_entry.mode = GIT_FILEMODE_BLOB;

	our_entry.path = mixed_case;
	FUNC0(&ancestor_entry, GIT_INDEX_STAGE_ANCESTOR);
	FUNC7(&our_entry.id, CONFLICTS_TWO_OUR_OID);
	ancestor_entry.mode = GIT_FILEMODE_BLOB;

	their_entry.path = mixed_case;
	FUNC0(&their_entry, GIT_INDEX_STAGE_THEIRS);
	FUNC7(&their_entry.id, CONFLICTS_TWO_THEIR_OID);
	their_entry.mode = GIT_FILEMODE_BLOB;

	FUNC3(FUNC5(repo_index,
		&ancestor_entry, &our_entry, &their_entry));

	FUNC3(FUNC6(&conflict_entry[0], &conflict_entry[1],
		&conflict_entry[2], repo_index, upper_case));

	/*
	 * We inserted with mixed case last, so on a case-insensitive
	 * fs we should get the mixed case.
	 */
	if (ignorecase)
		correct_case = mixed_case;
	else
		correct_case = upper_case;

	FUNC2(correct_case, conflict_entry[0]->path);
	FUNC7(&oid, ignorecase ? CONFLICTS_TWO_ANCESTOR_OID : CONFLICTS_ONE_ANCESTOR_OID);
	FUNC1(&oid, &conflict_entry[0]->id);

	FUNC2(correct_case, conflict_entry[1]->path);
	FUNC7(&oid, ignorecase ? CONFLICTS_TWO_OUR_OID : CONFLICTS_ONE_OUR_OID);
	FUNC1(&oid, &conflict_entry[1]->id);

	FUNC2(correct_case, conflict_entry[2]->path);
	FUNC7(&oid, ignorecase ? CONFLICTS_TWO_THEIR_OID : CONFLICTS_ONE_THEIR_OID);
	FUNC1(&oid, &conflict_entry[2]->id);

	FUNC3(FUNC6(&conflict_entry[0], &conflict_entry[1],
		&conflict_entry[2], repo_index, mixed_case));

	FUNC2(mixed_case, conflict_entry[0]->path);
	FUNC7(&oid, CONFLICTS_TWO_ANCESTOR_OID);
	FUNC1(&oid, &conflict_entry[0]->id);

	FUNC2(mixed_case, conflict_entry[1]->path);
	FUNC7(&oid, CONFLICTS_TWO_OUR_OID);
	FUNC1(&oid, &conflict_entry[1]->id);

	FUNC2(mixed_case, conflict_entry[2]->path);
	FUNC7(&oid, CONFLICTS_TWO_THEIR_OID);
	FUNC1(&oid, &conflict_entry[2]->id);
}