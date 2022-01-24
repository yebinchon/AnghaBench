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
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  git_reference ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  g_repo ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC6 () ; 

void FUNC7(void)
{
	/* create a packfile from loose refs skipping symbolic refs */
	int i;
	git_oid head;
	git_reference *ref;
	char name[128];

	FUNC0(FUNC3(&head, g_repo, "HEAD"));

	/* make a bunch of references */

	for (i = 0; i < 100; ++i) {
		FUNC5(name, sizeof(name), "refs/heads/symbolic-%03d", i);
		FUNC0(FUNC4(
			&ref, g_repo, name, "refs/heads/master", 0, NULL));
		FUNC2(ref);

		FUNC5(name, sizeof(name), "refs/heads/direct-%03d", i);
		FUNC0(FUNC1(&ref, g_repo, name, &head, 0, NULL));
		FUNC2(ref);
	}

	FUNC6();
}