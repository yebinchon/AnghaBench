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
 int GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  current_head_target ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 

void FUNC4(void)
{
	int error;
	git_oid oid;
	git_reference *ref;

	/* Make sure it works for oid and for symbolic both */
	FUNC1(&oid, current_master_tip);
	error = FUNC2(&ref, g_repo, current_head_target, &oid, false, NULL);
	FUNC0(error == GIT_EEXISTS);

	error = FUNC3(&ref, g_repo, "HEAD", current_head_target, false, NULL);
	FUNC0(error == GIT_EEXISTS);
}