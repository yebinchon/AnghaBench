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
struct TYPE_5__ {int /*<<< orphan*/  id; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_entry ;

/* Variables and functions */
 int /*<<< orphan*/  CONFLICTS_ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_ONE_THEIR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_ANCESTOR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_OUR_OID ; 
 int /*<<< orphan*/  CONFLICTS_TWO_THEIR_OID ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__ const**,TYPE_1__ const**,TYPE_1__ const**,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC5(void)
{
	const git_index_entry *conflict_entry[3];
	git_oid oid;

	FUNC2(FUNC3(&conflict_entry[0], &conflict_entry[1],
		&conflict_entry[2], repo_index, "conflicts-one.txt"));

	FUNC1("conflicts-one.txt", conflict_entry[0]->path);

	FUNC4(&oid, CONFLICTS_ONE_ANCESTOR_OID);
	FUNC0(&oid, &conflict_entry[0]->id);

	FUNC4(&oid, CONFLICTS_ONE_OUR_OID);
	FUNC0(&oid, &conflict_entry[1]->id);

	FUNC4(&oid, CONFLICTS_ONE_THEIR_OID);
	FUNC0(&oid, &conflict_entry[2]->id);

	FUNC2(FUNC3(&conflict_entry[0], &conflict_entry[1],
		&conflict_entry[2], repo_index, "conflicts-two.txt"));

	FUNC1("conflicts-two.txt", conflict_entry[0]->path);

	FUNC4(&oid, CONFLICTS_TWO_ANCESTOR_OID);
	FUNC0(&oid, &conflict_entry[0]->id);

	FUNC4(&oid, CONFLICTS_TWO_OUR_OID);
	FUNC0(&oid, &conflict_entry[1]->id);

	FUNC4(&oid, CONFLICTS_TWO_THEIR_OID);
	FUNC0(&oid, &conflict_entry[2]->id);
}