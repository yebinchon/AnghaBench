#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_5__ {int /*<<< orphan*/  path; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ git_index_entry ;
typedef  int /*<<< orphan*/  git_index_conflict_iterator ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTS_ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_THEIR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_THEIR_OID ; 
 scalar_t__ GIT_ITEROVER ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC8(void)
{
	git_index_conflict_iterator *iterator;
	const git_index_entry *conflict_entry[3];
	git_oid oid;

	FUNC2(FUNC5(&iterator, repo_index));

	FUNC2(FUNC6(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], iterator));

	FUNC7(&oid, CONFLICTS_ONE_ANCESTOR_OID);
	FUNC1(&oid, &conflict_entry[0]->id);
	FUNC0(FUNC3(conflict_entry[0]->path, "conflicts-one.txt") == 0);

	FUNC7(&oid, CONFLICTS_ONE_OUR_OID);
	FUNC1(&oid, &conflict_entry[1]->id);
	FUNC0(FUNC3(conflict_entry[0]->path, "conflicts-one.txt") == 0);

	FUNC7(&oid, CONFLICTS_ONE_THEIR_OID);
	FUNC1(&oid, &conflict_entry[2]->id);
	FUNC0(FUNC3(conflict_entry[0]->path, "conflicts-one.txt") == 0);

	FUNC2(FUNC6(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], iterator));

	FUNC7(&oid, CONFLICTS_TWO_ANCESTOR_OID);
	FUNC1(&oid, &conflict_entry[0]->id);
	FUNC0(FUNC3(conflict_entry[0]->path, "conflicts-two.txt") == 0);

	FUNC7(&oid, CONFLICTS_TWO_OUR_OID);
	FUNC1(&oid, &conflict_entry[1]->id);
	FUNC0(FUNC3(conflict_entry[0]->path, "conflicts-two.txt") == 0);

	FUNC7(&oid, CONFLICTS_TWO_THEIR_OID);
	FUNC1(&oid, &conflict_entry[2]->id);
	FUNC0(FUNC3(conflict_entry[0]->path, "conflicts-two.txt") == 0);

	FUNC0(FUNC6(&conflict_entry[0], &conflict_entry[1], &conflict_entry[2], iterator) == GIT_ITEROVER);

	FUNC0(conflict_entry[0] == NULL);
	FUNC0(conflict_entry[2] == NULL);
	FUNC0(conflict_entry[2] == NULL);

	FUNC4(iterator);
}