#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_10__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_REFERENCE_DIRECT ; 
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_head_target ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

void FUNC14(void)
{
	/* create a new symbolic reference */
	git_reference *new_reference, *looked_up_ref, *resolved_ref;
	git_repository *repo2;
	git_oid id;

	const char *new_head_tracker = "ANOTHER_HEAD_TRACKER";

	FUNC4(&id, current_master_tip);

	/* Create and write the new symbolic reference */
	FUNC3(FUNC8(&new_reference, g_repo, new_head_tracker, current_head_target, 0, NULL));

	/* Ensure the reference can be looked-up... */
	FUNC3(FUNC6(&looked_up_ref, g_repo, new_head_tracker));
	FUNC0(FUNC10(looked_up_ref) & GIT_REFERENCE_SYMBOLIC);
	FUNC0(FUNC13(looked_up_ref) == 0);
	FUNC2(looked_up_ref->name, new_head_tracker);

	/* ...peeled.. */
	FUNC3(FUNC7(&resolved_ref, looked_up_ref));
	FUNC0(FUNC10(resolved_ref) == GIT_REFERENCE_DIRECT);

	/* ...and that it points to the current master tip */
	FUNC1(&id, FUNC9(resolved_ref));
	FUNC5(looked_up_ref);
	FUNC5(resolved_ref);

	/* Similar test with a fresh new repository */
	FUNC3(FUNC12(&repo2, "testrepo"));

	FUNC3(FUNC6(&looked_up_ref, repo2, new_head_tracker));
	FUNC3(FUNC7(&resolved_ref, looked_up_ref));
	FUNC1(&id, FUNC9(resolved_ref));

	FUNC11(repo2);

	FUNC5(new_reference);
	FUNC5(looked_up_ref);
	FUNC5(resolved_ref);
}