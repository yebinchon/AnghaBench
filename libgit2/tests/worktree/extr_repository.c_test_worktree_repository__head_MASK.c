#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  git_reference ;
struct TYPE_2__ {scalar_t__ repo; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__ fixture ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,scalar_t__,char*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,scalar_t__,char*) ; 

void FUNC7(void)
{
	git_reference *ref, *head;

	FUNC1(FUNC4(&ref, fixture.repo, "refs/heads/testrepo-worktree"));
	FUNC1(FUNC6(&head, fixture.repo, "testrepo-worktree"));
	FUNC0(FUNC2(ref, head) == 0);
	FUNC0(FUNC5(ref) == fixture.repo);

	FUNC3(ref);
	FUNC3(head);
}