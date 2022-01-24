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
typedef  int /*<<< orphan*/  git_transaction ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_ELOCKED ; 
 int /*<<< orphan*/  GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/ * g_tx ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,char const*) ; 
 char* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

void FUNC10(void)
{
	git_oid id;
	git_transaction *g_tx_with_lock;
	git_repository *g_repo_with_locking_tx;
	const char *g_repo_path = FUNC5(g_repo);
	
	/* prepare a separate transaction in another instance of testrepo and lock master */
	FUNC1(FUNC4(&g_repo_with_locking_tx, g_repo_path));
	FUNC1(FUNC8(&g_tx_with_lock, g_repo_with_locking_tx));
	FUNC1(FUNC7(g_tx_with_lock, "refs/heads/master"));

	/* lock reference for set_target */
	FUNC1(FUNC2(&id, "a65fedf39aefe402d3bb6e24df4d4f5fe4547750"));
	FUNC0(GIT_ELOCKED, FUNC7(g_tx, "refs/heads/master"));
	FUNC0(GIT_ENOTFOUND, FUNC9(g_tx, "refs/heads/master", &id, NULL, NULL));

	FUNC6(g_tx_with_lock);
	FUNC3(g_repo_with_locking_tx);
}