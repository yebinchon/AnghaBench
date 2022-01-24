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
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_3__ {int /*<<< orphan*/ * msg; int /*<<< orphan*/  oid_cur; int /*<<< orphan*/  committer; int /*<<< orphan*/  oid_old; } ;
typedef  TYPE_1__ git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OID_HEX_ZERO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  commit_msg ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ **,char*) ; 
 int /*<<< orphan*/  new_ref ; 

__attribute__((used)) static void FUNC15(const git_signature *committer, const git_oid *oid)
{
	git_repository *repo2;
	git_reference *lookedup_ref;
	git_reflog *reflog;
	const git_reflog_entry *entry;

	/* Reopen a new instance of the repository */
	FUNC4(FUNC14(&repo2, "testrepo.git"));

	/* Lookup the previously created branch */
	FUNC4(FUNC8(&lookedup_ref, repo2, new_ref));

	/* Read and parse the reflog for this branch */
	FUNC4(FUNC12(&reflog, repo2, new_ref));
	FUNC2(3, (int)FUNC10(reflog));

	/* The first one was the creation of the branch */
	entry = FUNC9(reflog, 2);
	FUNC1(FUNC6(&entry->oid_old, GIT_OID_HEX_ZERO) == 0);

	entry = FUNC9(reflog, 1);
	FUNC0(committer, entry->committer);
	FUNC1(FUNC5(oid, &entry->oid_old) == 0);
	FUNC1(FUNC5(oid, &entry->oid_cur) == 0);
	FUNC1(entry->msg == NULL);

	entry = FUNC9(reflog, 0);
	FUNC0(committer, entry->committer);
	FUNC1(FUNC5(oid, &entry->oid_cur) == 0);
	FUNC3(commit_msg, entry->msg);

	FUNC11(reflog);
	FUNC13(repo2);

	FUNC7(lookedup_ref);
}