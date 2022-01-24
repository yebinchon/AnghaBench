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
 char* GIT_HEAD_FILE ; 
 int /*<<< orphan*/  branch ; 
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC8(void)
{
	git_reference *linked, *super, *head;

	FUNC2(FUNC6(&linked, repo, "refs/heads/linked", "refs/heads/master", 0, NULL));
	FUNC2(FUNC6(&super, repo, "refs/heads/super", "refs/heads/linked", 0, NULL));
	FUNC2(FUNC6(&head, repo, GIT_HEAD_FILE, "refs/heads/super", 1, NULL));

	FUNC0(false, FUNC3(linked));
	FUNC0(false, FUNC3(super));

	FUNC2(FUNC7(&branch, repo));
	FUNC1("refs/heads/master", FUNC5(branch));

	FUNC4(linked);
	FUNC4(super);
	FUNC4(head);
}