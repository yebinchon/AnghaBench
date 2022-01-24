#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char** member_0; int member_1; } ;
typedef  TYPE_1__ git_strarray ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  remote ; 
 int /*<<< orphan*/  repo ; 

void FUNC6(void)
{
	git_reference *ref;
	char *refspec_strings[] = {
		"master",
	};
	git_strarray array = {
		refspec_strings,
		1,
	};

	/* this remote has a passive refspec of "refs/heads/<star>:refs/remotes/origin/<star>" */
	FUNC1(FUNC4(&remote, repo, "origin", FUNC0("testrepo.git")));
	/* and we pass the active refspec "master" */
	FUNC1(FUNC5(remote, &array, NULL, NULL));

	/* and we expect that to update our copy of origin's master */
	FUNC1(FUNC3(&ref, repo, "refs/remotes/origin/master"));
	FUNC2(ref);
}