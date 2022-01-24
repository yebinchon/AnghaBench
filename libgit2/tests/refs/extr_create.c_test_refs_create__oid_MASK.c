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
 int GIT_REFERENCE_DIRECT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/ * g_repo ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__**,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__**,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*) ; 
 scalar_t__ FUNC12 (TYPE_1__*) ; 

void FUNC13(void)
{
	/* create a new OID reference */
	git_reference *new_reference, *looked_up_ref;
	git_repository *repo2;
	git_oid id;

	const char *new_head = "refs/heads/new-head";

	FUNC4(&id, current_master_tip);

	/* Create and write the new object id reference */
	FUNC3(FUNC5(&new_reference, g_repo, new_head, &id, 0, NULL));

	/* Ensure the reference can be looked-up... */
	FUNC3(FUNC7(&looked_up_ref, g_repo, new_head));
	FUNC0(FUNC9(looked_up_ref) & GIT_REFERENCE_DIRECT);
	FUNC0(FUNC12(looked_up_ref) == 0);
	FUNC2(looked_up_ref->name, new_head);

	/* ...and that it points to the current master tip */
	FUNC1(&id, FUNC8(looked_up_ref));
	FUNC6(looked_up_ref);

	/* Similar test with a fresh new repository */
	FUNC3(FUNC11(&repo2, "testrepo"));

	FUNC3(FUNC7(&looked_up_ref, repo2, new_head));
	FUNC1(&id, FUNC8(looked_up_ref));

	FUNC10(repo2);

	FUNC6(new_reference);
	FUNC6(looked_up_ref);
}