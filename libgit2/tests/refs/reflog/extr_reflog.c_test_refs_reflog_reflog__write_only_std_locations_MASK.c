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
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_master_tip ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

void FUNC5(void)
{
	git_reference *ref;
	git_oid id;

	FUNC2(&id, current_master_tip);

	FUNC1(FUNC3(&ref, g_repo, "refs/heads/foo", &id, 1, NULL));
	FUNC4(ref);
	FUNC1(FUNC3(&ref, g_repo, "refs/tags/foo", &id, 1, NULL));
	FUNC4(ref);
	FUNC1(FUNC3(&ref, g_repo, "refs/notes/foo", &id, 1, NULL));
	FUNC4(ref);

	FUNC0(true, "refs/heads/foo");
	FUNC0(false, "refs/tags/foo");
	FUNC0(true, "refs/notes/foo");

}