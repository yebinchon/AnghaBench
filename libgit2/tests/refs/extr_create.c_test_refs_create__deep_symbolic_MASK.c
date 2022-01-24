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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_head_target ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

void FUNC8(void)
{
	/* create a deep symbolic reference */
	git_reference *new_reference, *looked_up_ref, *resolved_ref;
	git_oid id;

	const char *new_head_tracker = "deep/rooted/tracker";

	FUNC2(&id, current_master_tip);

	FUNC1(FUNC6(&new_reference, g_repo, new_head_tracker, current_head_target, 0, NULL));
	FUNC1(FUNC4(&looked_up_ref, g_repo, new_head_tracker));
	FUNC1(FUNC5(&resolved_ref, looked_up_ref));
	FUNC0(&id, FUNC7(resolved_ref));

	FUNC3(new_reference);
	FUNC3(looked_up_ref);
	FUNC3(resolved_ref);
}