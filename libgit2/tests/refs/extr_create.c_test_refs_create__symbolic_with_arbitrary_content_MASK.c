#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  name; } ;
typedef  TYPE_1__ git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION ; 
 int GIT_REFERENCE_SYMBOLIC ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__**,int /*<<< orphan*/ *,char const*,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int FUNC10 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC13 (TYPE_1__*) ; 

void FUNC14(void)
{
	git_reference *new_reference, *looked_up_ref;
	git_repository *repo2;
	git_oid id;

	const char *new_head_tracker = "ANOTHER_HEAD_TRACKER";
	const char *arbitrary_target = "ARBITRARY DATA";

	FUNC5(&id, current_master_tip);

	/* Attempt to create symbolic ref with arbitrary data in target
	 * fails by default
	 */
	FUNC2(FUNC8(&new_reference, g_repo, new_head_tracker, arbitrary_target, 0, NULL));

	FUNC4(GIT_OPT_ENABLE_STRICT_SYMBOLIC_REF_CREATION, 0);

	/* With strict target validation disabled, ref creation succeeds */
	FUNC3(FUNC8(&new_reference, g_repo, new_head_tracker, arbitrary_target, 0, NULL));

	/* Ensure the reference can be looked-up... */
	FUNC3(FUNC7(&looked_up_ref, g_repo, new_head_tracker));
	FUNC0(FUNC10(looked_up_ref) & GIT_REFERENCE_SYMBOLIC);
	FUNC0(FUNC13(looked_up_ref) == 0);
	FUNC1(looked_up_ref->name, new_head_tracker);
	FUNC6(looked_up_ref);

	/* Ensure the target is what we expect it to be */
	FUNC1(FUNC9(new_reference), arbitrary_target);

	/* Similar test with a fresh new repository object */
	FUNC3(FUNC12(&repo2, "testrepo"));

	/* Ensure the reference can be looked-up... */
	FUNC3(FUNC7(&looked_up_ref, repo2, new_head_tracker));
	FUNC0(FUNC10(looked_up_ref) & GIT_REFERENCE_SYMBOLIC);
	FUNC0(FUNC13(looked_up_ref) == 0);
	FUNC1(looked_up_ref->name, new_head_tracker);

	/* Ensure the target is what we expect it to be */
	FUNC1(FUNC9(new_reference), arbitrary_target);

	FUNC11(repo2);
	FUNC6(new_reference);
	FUNC6(looked_up_ref);
}