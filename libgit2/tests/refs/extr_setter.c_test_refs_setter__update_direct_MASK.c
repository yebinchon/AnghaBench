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
 scalar_t__ GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_master_name ; 
 int /*<<< orphan*/  ref_test_name ; 

void FUNC9(void)
{
	git_reference *ref, *test_ref, *new_ref;
	git_oid id;

	FUNC2(FUNC5(&ref, g_repo, ref_master_name));
	FUNC0(FUNC8(ref) == GIT_REFERENCE_DIRECT);
	FUNC3(&id, FUNC7(ref));
	FUNC4(ref);

	FUNC2(FUNC5(&test_ref, g_repo, ref_test_name));
	FUNC0(FUNC8(test_ref) == GIT_REFERENCE_DIRECT);

	FUNC2(FUNC6(&new_ref, test_ref, &id, NULL));

	FUNC4(test_ref);
	FUNC4(new_ref);

	FUNC2(FUNC5(&test_ref, g_repo, ref_test_name));
	FUNC0(FUNC8(test_ref) == GIT_REFERENCE_DIRECT);
	FUNC1(&id, FUNC7(test_ref));
	FUNC4(test_ref);
}