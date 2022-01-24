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
struct opts {scalar_t__ argc; } ;
typedef  int /*<<< orphan*/  git_signature ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;
typedef  int /*<<< orphan*/  git_commit ;

/* Variables and functions */
 int /*<<< orphan*/  GIT_STASH_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 char* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static int FUNC9(git_repository *repo, struct opts *opts)
{
	git_signature *signature;
	git_commit *stash;
	git_oid stashid;

	if (opts->argc)
		FUNC8("push does not accept any parameters");

	FUNC0(FUNC4(&signature, repo),
		  "Unable to get signature", NULL);
	FUNC0(FUNC6(&stashid, repo, signature, NULL, GIT_STASH_DEFAULT),
		  "Unable to save stash", NULL);
	FUNC0(FUNC2(&stash, repo, &stashid),
		  "Unable to lookup stash commit", NULL);

	FUNC7("Saved working directory %s\n", FUNC3(stash));

	FUNC5(signature);
	FUNC1(stash);

	return 0;
}