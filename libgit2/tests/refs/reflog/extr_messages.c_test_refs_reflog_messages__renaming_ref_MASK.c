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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*,char*,char*) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int,char*) ; 

void FUNC6(void)
{
	git_reference *ref, *new_ref;

	FUNC0(FUNC3(&ref, g_repo, "refs/heads/master"));
	FUNC0(FUNC5(&new_ref, ref, "refs/heads/renamed", false,
									 "message"));

	FUNC1(g_repo, FUNC4(new_ref), 0,
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"a65fedf39aefe402d3bb6e24df4d4f5fe4547750",
		"foo@example.com", "message");

	FUNC2(ref);
	FUNC2(new_ref);
}