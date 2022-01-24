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

/* Variables and functions */
 int /*<<< orphan*/  GIT_DIRECTION_PUSH ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ **,char*,int) ; 
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
	/* Should be able to push to a bare remote */
	git_remote *localremote;
	const char *url;

	/* Get some commits */
	FUNC4(FUNC0("testrepo.git"));
	FUNC2(FUNC7(remote, &array, NULL, NULL));

	/* Set up an empty bare repo to push into */
	{
		git_repository *localbarerepo;
		FUNC2(FUNC11(&localbarerepo, "./localbare.git", 1));
		FUNC10(localbarerepo);
	}

	/* Create a file URL */
	url = FUNC3("./localbare.git");

	/* Connect to the bare repo */
	FUNC2(FUNC6(&localremote, repo, url));
	FUNC2(FUNC5(localremote, GIT_DIRECTION_PUSH, NULL, NULL, NULL));

	/* Try to push */
	FUNC2(FUNC9(localremote, &push_array, NULL));

	/* Clean up */
	FUNC8(localremote);
	FUNC1("localbare.git");
}