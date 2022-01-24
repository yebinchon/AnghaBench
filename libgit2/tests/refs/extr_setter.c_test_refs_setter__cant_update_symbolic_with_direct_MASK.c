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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  ref_master_name ; 
 int /*<<< orphan*/  ref_name ; 

void FUNC10(void)
{
	/* Overwrite an existing symbolic reference with an object id one */
	git_reference *ref, *new;
	git_oid id;

	FUNC2(FUNC5(&ref, g_repo, ref_master_name));
	FUNC0(FUNC9(ref) == GIT_REFERENCE_DIRECT);
	FUNC3(&id, FUNC8(ref));
	FUNC4(ref);

	/* Create the symbolic ref */
	FUNC2(FUNC7(&ref, g_repo, ref_name, ref_master_name, 0, NULL));

	/* Can't set an OID on a direct ref */
	FUNC1(FUNC6(&new, ref, &id, NULL));

	FUNC4(ref);
}