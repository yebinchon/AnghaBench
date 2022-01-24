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

/* Variables and functions */
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_branch_name ; 
 int /*<<< orphan*/  ref_master_name ; 
 int /*<<< orphan*/  ref_name ; 

void FUNC9(void)
{
	/* Overwrite an existing symbolic reference */
	git_reference *ref, *branch_ref;

	/* The target needds to exist and we need to check the name has changed */
	FUNC3(FUNC6(&branch_ref, g_repo, ref_branch_name, ref_master_name, 0, NULL));
	FUNC3(FUNC6(&ref, g_repo, ref_name, ref_branch_name, 0, NULL));
	FUNC4(ref);

	/* Ensure it points to the right place*/
	FUNC3(FUNC5(&ref, g_repo, ref_name));
	FUNC0(FUNC8(ref) & GIT_REFERENCE_SYMBOLIC);
	FUNC1(FUNC7(ref), ref_branch_name);
	FUNC4(ref);

	/* Ensure we can't create it unless we force it to */
	FUNC2(FUNC6(&ref, g_repo, ref_name, ref_master_name, 0, NULL));
	FUNC3(FUNC6(&ref, g_repo, ref_name, ref_master_name, 1, NULL));
	FUNC4(ref);

	/* Ensure it points to the right place */
	FUNC3(FUNC5(&ref, g_repo, ref_name));
	FUNC0(FUNC8(ref) & GIT_REFERENCE_SYMBOLIC);
	FUNC1(FUNC7(ref), ref_master_name);

	FUNC4(ref);
	FUNC4(branch_ref);
}