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
typedef  int /*<<< orphan*/  git_object ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OBJECT_ANY ; 
 scalar_t__ GIT_OBJECT_COMMIT ; 
 int GIT_REFERENCE_DIRECT ; 
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__**,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  head_tracker_sym_ref_name ; 
 scalar_t__ FUNC14 (TYPE_1__*) ; 

void FUNC15(void)
{
	/* lookup a nested symbolic reference */
	git_reference *reference, *resolved_ref;
	git_object *object;
	git_oid id;

	FUNC3(FUNC10(&reference, g_repo, head_tracker_sym_ref_name));
	FUNC0(FUNC13(reference) & GIT_REFERENCE_SYMBOLIC);
	FUNC0(FUNC14(reference) == 0);
	FUNC2(reference->name, head_tracker_sym_ref_name);

	FUNC3(FUNC11(&resolved_ref, reference));
	FUNC0(FUNC13(resolved_ref) == GIT_REFERENCE_DIRECT);

	FUNC3(FUNC6(&object, g_repo, FUNC12(resolved_ref), GIT_OBJECT_ANY));
	FUNC0(object != NULL);
	FUNC0(FUNC7(object) == GIT_OBJECT_COMMIT);

	FUNC8(&id, current_master_tip);
	FUNC1(&id, FUNC5(object));

	FUNC4(object);

	FUNC9(reference);
	FUNC9(resolved_ref);
}