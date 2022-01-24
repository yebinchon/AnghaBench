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
 int GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ref_master_name ; 
 int /*<<< orphan*/  ref_one_name ; 
 int /*<<< orphan*/  ref_one_name_new ; 
 int /*<<< orphan*/  ref_two_name ; 

void FUNC12(void)
{
	/* can not overwrite name of existing reference */
	git_reference *ref, *ref_one, *ref_one_new, *ref_two;
	git_refdb *refdb;
	git_oid id;

	FUNC2(FUNC8(&ref, g_repo, ref_master_name));
	FUNC0(FUNC10(ref) & GIT_REFERENCE_DIRECT);

	FUNC3(&id, FUNC9(ref));

	/* Create loose references */
	FUNC2(FUNC6(&ref_one, g_repo, ref_one_name, &id, 0, NULL));
	FUNC2(FUNC6(&ref_two, g_repo, ref_two_name, &id, 0, NULL));

	/* Pack everything */
	FUNC2(FUNC11(&refdb, g_repo));
	FUNC2(FUNC4(refdb));

	/* Attempt to create illegal reference */
	FUNC1(FUNC6(&ref_one_new, g_repo, ref_one_name_new, &id, 0, NULL));

	/* Illegal reference couldn't be created so this is supposed to fail */
	FUNC1(FUNC8(&ref_one_new, g_repo, ref_one_name_new));

	FUNC7(ref);
	FUNC7(ref_one);
	FUNC7(ref_one_new);
	FUNC7(ref_two);
	FUNC5(refdb);
}