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
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_refdb ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11(void)
{
	/* can delete a just packed reference */
	git_reference *ref;
	git_refdb *refdb;
	git_oid id;
	const char *new_ref = "refs/heads/new_ref";

	FUNC2(&id, current_master_tip);

	/* Create and write the new object id reference */
	FUNC1(FUNC5(&ref, g_repo, new_ref, &id, 0, NULL));
	FUNC7(ref);

	/* Lookup the reference */
	FUNC1(FUNC8(&ref, g_repo, new_ref));

	/* Ensure it's a loose reference */
	FUNC0(FUNC10(ref) == 0);

	/* Pack all existing references */
	FUNC1(FUNC9(&refdb, g_repo));
	FUNC1(FUNC3(refdb));

	/* Reload the reference from disk */
	FUNC7(ref);
	FUNC1(FUNC8(&ref, g_repo, new_ref));

	/* Ensure it's a packed reference */
	FUNC0(FUNC10(ref) == 1);

	/* This should pass */
	FUNC1(FUNC6(ref));
	FUNC7(ref);
	FUNC4(refdb);
}