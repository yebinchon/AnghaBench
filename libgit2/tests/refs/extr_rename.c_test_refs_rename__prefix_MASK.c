#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  ref_master_name ; 
 int /*<<< orphan*/  ref_two_name ; 
 int /*<<< orphan*/  ref_two_name_new ; 

void FUNC11(void)
{
	/* can be renamed to a new name prefixed with the old name */
	git_reference *ref, *ref_two, *looked_up_ref, *renamed_ref;
	git_oid id;

	FUNC3(FUNC7(&ref, g_repo, ref_master_name));
	FUNC0(FUNC10(ref) & GIT_REFERENCE_DIRECT);

	FUNC4(&id, FUNC9(ref));

	/* Create loose references */
	FUNC3(FUNC5(&ref_two, g_repo, ref_two_name, &id, 0, NULL));

	/* An existing reference... */
	FUNC3(FUNC7(&looked_up_ref, g_repo, ref_two_name));

	/* Can be rename to a new name starting with the old name. */
	FUNC3(FUNC8(&renamed_ref, looked_up_ref, ref_two_name_new, 0, NULL));
	FUNC6(looked_up_ref);
	FUNC6(renamed_ref);

	/* Check we actually renamed it */
	FUNC3(FUNC7(&looked_up_ref, g_repo, ref_two_name_new));
	FUNC1(looked_up_ref->name, ref_two_name_new);
	FUNC6(looked_up_ref);
	FUNC2(FUNC7(&looked_up_ref, g_repo, ref_two_name));

	FUNC6(ref);
	FUNC6(ref_two);
	FUNC6(looked_up_ref);
}