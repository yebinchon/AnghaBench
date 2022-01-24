#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  git_reflog_entry ;
typedef  int /*<<< orphan*/  git_reflog ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_REFS_STASH_FILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (size_t,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*) ; 
 size_t FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  repo ; 

void FUNC13(void)
{
	git_reference *stash;
	git_reflog *reflog;
	const git_reflog_entry *entry;
	git_oid oid;
	size_t count;

	FUNC12();

	FUNC2(FUNC5(&stash, repo, GIT_REFS_STASH_FILE));

	FUNC2(FUNC10(&reflog, repo, GIT_REFS_STASH_FILE));
	entry = FUNC6(reflog, 1);

	FUNC3(&oid, FUNC7(entry));
	count = FUNC8(reflog);

	FUNC9(reflog);

	FUNC2(FUNC11(repo, 1));

	FUNC2(FUNC10(&reflog, repo, GIT_REFS_STASH_FILE));
	entry = FUNC6(reflog, 0);

	FUNC0(&oid, FUNC7(entry));
	FUNC1(count - 1, FUNC8(reflog));

	FUNC9(reflog);

	FUNC4(stash);
}