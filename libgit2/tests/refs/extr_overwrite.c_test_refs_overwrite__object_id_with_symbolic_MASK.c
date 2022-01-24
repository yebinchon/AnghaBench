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
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_REFERENCE_DIRECT ; 
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_master_name ; 
 int /*<<< orphan*/  ref_name ; 

void FUNC12(void)
{
	/* Overwrite an existing object id reference with a symbolic one */
	git_reference *ref;
	git_oid id;

	FUNC3(FUNC7(&ref, g_repo, ref_master_name));
	FUNC0(FUNC11(ref) & GIT_REFERENCE_DIRECT);
	FUNC4(&id, FUNC10(ref));
	FUNC6(ref);

	FUNC3(FUNC5(&ref, g_repo, ref_name, &id, 0, NULL));
	FUNC6(ref);
	FUNC2(FUNC8(&ref, g_repo, ref_name, ref_master_name, 0, NULL));
	FUNC3(FUNC8(&ref, g_repo, ref_name, ref_master_name, 1, NULL));
	FUNC6(ref);

	/* Ensure it points to the right place */
	FUNC3(FUNC7(&ref, g_repo, ref_name));
	FUNC0(FUNC11(ref) & GIT_REFERENCE_SYMBOLIC);
	FUNC1(FUNC9(ref), ref_master_name);

	FUNC6(ref);
}