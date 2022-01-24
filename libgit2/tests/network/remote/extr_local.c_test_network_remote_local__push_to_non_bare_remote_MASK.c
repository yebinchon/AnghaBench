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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_fetch_options ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/  GIT_EBAREREPO ; 
 int /*<<< orphan*/  GIT_FETCH_OPTIONS_INIT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  push_array ; 
 int /*<<< orphan*/  remote ; 
 int /*<<< orphan*/  repo ; 

void FUNC12(void)
{
	char *refspec_strings[] = {
		"master:master",
	};
	git_strarray array = {
		refspec_strings,
		1,
	};
	/* Shouldn't be able to push to a non-bare remote */
	git_remote *localremote;
	git_fetch_options fetch_opts = GIT_FETCH_OPTIONS_INIT;

	/* Get some commits */
	FUNC4(FUNC0("testrepo.git"));
	FUNC3(FUNC7(remote, &array, &fetch_opts, NULL));

	/* Set up an empty non-bare repo to push into */
	{
		git_repository *remoterepo = NULL;
		FUNC3(FUNC11(&remoterepo, "localnonbare", 0));
		FUNC10(remoterepo);
	}

	/* Connect to the bare repo */
	FUNC3(FUNC6(&localremote, repo, "./localnonbare"));
	FUNC3(FUNC5(localremote, GIT_DIRECTION_PUSH, NULL, NULL, NULL));

	/* Try to push */
	FUNC2(GIT_EBAREREPO, FUNC9(localremote, &push_array, NULL));

	/* Clean up */
	FUNC8(localremote);
	FUNC1("localbare.git");
}