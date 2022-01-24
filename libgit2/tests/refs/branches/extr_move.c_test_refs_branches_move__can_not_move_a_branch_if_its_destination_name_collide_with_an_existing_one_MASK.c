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
typedef  int /*<<< orphan*/  git_config ;
typedef  int /*<<< orphan*/  git_buf ;
struct TYPE_2__ {int /*<<< orphan*/ * message; } ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_BUF_INIT ; 
 int /*<<< orphan*/  GIT_EEXISTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 char* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char const**,int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ **,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  repo ; 

void FUNC14(void)
{
	git_reference *original_ref, *new_ref;
	git_config *config;
	git_buf buf = GIT_BUF_INIT;
	char *original_remote, *original_merge;
	const char *str;

	FUNC3(FUNC13(&config, repo));

	FUNC3(FUNC9(&buf, config, "branch.master.remote"));
	original_remote = FUNC6(&buf);
	FUNC3(FUNC9(&buf, config, "branch.master.merge"));
	original_merge  = FUNC6(&buf);
	FUNC7(config);

	FUNC3(FUNC12(&original_ref, repo, "refs/heads/br2"));

	FUNC1(GIT_EEXISTS,
		FUNC5(&new_ref, original_ref, "master", 0));

	FUNC0(FUNC10()->message != NULL);

	FUNC3(FUNC13(&config, repo));
	FUNC3(FUNC8(&str, config, "branch.master.remote"));
	FUNC2(original_remote, str);
	FUNC3(FUNC8(&str, config, "branch.master.merge"));
	FUNC2(original_merge,  str);
	FUNC7(config);

	FUNC1(GIT_EEXISTS,
		FUNC5(&new_ref, original_ref, "cannot-fetch", 0));

	FUNC0(FUNC10()->message != NULL);

	FUNC3(FUNC13(&config, repo));
	FUNC3(FUNC8(&str, config, "branch.master.remote"));
	FUNC2(original_remote, str);
	FUNC3(FUNC8(&str, config, "branch.master.merge"));
	FUNC2(original_merge,  str);
	FUNC7(config);

	FUNC11(original_ref);
	FUNC3(FUNC12(&original_ref, repo, "refs/heads/track-local"));

	FUNC1(GIT_EEXISTS,
		FUNC5(&new_ref, original_ref, "master", 0));

	FUNC0(FUNC10()->message != NULL);

	FUNC3(FUNC13(&config, repo));
	FUNC3(FUNC8(&str, config, "branch.master.remote"));
	FUNC2(original_remote, str);
	FUNC3(FUNC8(&str, config, "branch.master.merge"));
	FUNC2(original_merge,  str);

	FUNC4(original_remote); FUNC4(original_merge);
	FUNC11(original_ref);
	FUNC7(config);
}