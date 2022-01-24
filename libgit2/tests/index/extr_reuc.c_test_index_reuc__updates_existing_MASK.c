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
typedef  int /*<<< orphan*/  git_oid ;
struct TYPE_4__ {int /*<<< orphan*/ * oid; int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_reuc_entry ;

/* Variables and functions */
 int GIT_INDEX_CAPABILITY_IGNORE_CASE ; 
 int /*<<< orphan*/  TWO_ANCESTOR_OID ; 
 int /*<<< orphan*/  TWO_OUR_OID ; 
 int /*<<< orphan*/  TWO_THEIR_OID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC12(void)
{
	const git_index_reuc_entry *reuc;
	git_oid ancestor_oid, our_oid, their_oid, oid;
	int index_caps;

	FUNC6(repo_index);

	index_caps = FUNC5(repo_index);

	index_caps |= GIT_INDEX_CAPABILITY_IGNORE_CASE;
	FUNC4(FUNC10(repo_index, index_caps));

	FUNC11(&ancestor_oid, TWO_ANCESTOR_OID);
	FUNC11(&our_oid, TWO_OUR_OID);
	FUNC11(&their_oid, TWO_THEIR_OID);

	FUNC4(FUNC7(repo_index, "two.txt",
		0100644, &ancestor_oid,
		0100644, &our_oid,
		0100644, &their_oid));

	FUNC4(FUNC7(repo_index, "TWO.txt",
		0100644, &our_oid,
		0100644, &their_oid,
		0100644, &ancestor_oid));

	FUNC1(1, FUNC8(repo_index));

	FUNC0(reuc = FUNC9(repo_index, 0));

	FUNC3("TWO.txt", reuc->path);
	FUNC11(&oid, TWO_OUR_OID);
	FUNC2(&reuc->oid[0], &oid);
	FUNC11(&oid, TWO_THEIR_OID);
	FUNC2(&reuc->oid[1], &oid);
	FUNC11(&oid, TWO_ANCESTOR_OID);
	FUNC2(&reuc->oid[2], &oid);
}