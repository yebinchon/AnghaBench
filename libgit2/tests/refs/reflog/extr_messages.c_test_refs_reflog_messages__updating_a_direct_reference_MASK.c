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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*) ; 

void FUNC6(void)
{
	git_reference *ref, *ref_out, *target_ref;
	git_oid target_id;
	const char *message = "You've been logged, mate!";

	FUNC4(&target_id, g_repo, "refs/heads/haacked");
	FUNC0(FUNC3(&target_ref, g_repo, "refs/heads/haacked"));

	FUNC0(FUNC3(&ref, g_repo, "refs/heads/master"));

	FUNC0(FUNC5(&ref_out, ref, &target_id, message));

	FUNC1(g_repo, "refs/heads/master", 0,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"258f0e2a959a364e40ed6603d5d44fbb24765b10",
		NULL, message);

	FUNC2(target_ref);
	FUNC2(ref);
	FUNC2(ref_out);
}