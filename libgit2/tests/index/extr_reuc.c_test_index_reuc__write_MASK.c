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
struct TYPE_4__ {int /*<<< orphan*/  path; } ;
typedef  TYPE_1__ git_index_reuc_entry ;

/* Variables and functions */
 int /*<<< orphan*/  ONE_ANCESTOR_OID ; 
 int /*<<< orphan*/  ONE_OUR_OID ; 
 int /*<<< orphan*/  ONE_THEIR_OID ; 
 int /*<<< orphan*/  TWO_ANCESTOR_OID ; 
 int /*<<< orphan*/  TWO_OUR_OID ; 
 int /*<<< orphan*/  TWO_THEIR_OID ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__ const*) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo_index ; 

void FUNC10(void)
{
	git_oid ancestor_oid, our_oid, their_oid;
	const git_index_reuc_entry *reuc;

	FUNC4(repo_index);

	/* Write out of order to ensure sorting is correct */
	FUNC9(&ancestor_oid, TWO_ANCESTOR_OID);
	FUNC9(&our_oid, TWO_OUR_OID);
	FUNC9(&their_oid, TWO_THEIR_OID);

	FUNC3(FUNC5(repo_index, "two.txt",
		0100644, &ancestor_oid,
		0100644, &our_oid,
		0100644, &their_oid));

	FUNC9(&ancestor_oid, ONE_ANCESTOR_OID);
	FUNC9(&our_oid, ONE_OUR_OID);
	FUNC9(&their_oid, ONE_THEIR_OID);

	FUNC3(FUNC5(repo_index, "one.txt",
		0100644, &ancestor_oid,
		0100644, &our_oid,
		0100644, &their_oid));

	FUNC3(FUNC8(repo_index));
	FUNC1(2, FUNC6(repo_index));

	/* ensure sort order was round-tripped correct */
	FUNC0(reuc = FUNC7(repo_index, 0));
	FUNC2("one.txt", reuc->path);

	FUNC0(reuc = FUNC7(repo_index, 1));
	FUNC2("two.txt", reuc->path);
}