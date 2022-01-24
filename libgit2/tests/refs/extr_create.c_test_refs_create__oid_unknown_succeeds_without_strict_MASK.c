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
 int /*<<< orphan*/  GIT_OPT_ENABLE_STRICT_OBJECT_CREATION ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 

void FUNC6(void)
{
	git_reference *new_reference, *looked_up_ref;
	git_oid id;

	const char *new_head = "refs/heads/new-head";

	FUNC2(&id, "deadbeef3f795b2b4353bcce3a527ad0a4f7f644");

	FUNC0(FUNC1(GIT_OPT_ENABLE_STRICT_OBJECT_CREATION, 0));

	/* Create and write the new object id reference */
	FUNC0(FUNC3(&new_reference, g_repo, new_head, &id, 0, NULL));
	FUNC4(new_reference);

	/* Ensure the reference can't be looked-up... */
	FUNC0(FUNC5(&looked_up_ref, g_repo, new_head));
	FUNC4(looked_up_ref);
}