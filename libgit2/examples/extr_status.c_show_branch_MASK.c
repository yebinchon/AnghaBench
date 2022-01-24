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
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_reference ;

/* Variables and functions */
 int FORMAT_LONG ; 
 int GIT_ENOTFOUND ; 
 int GIT_EUNBORNBRANCH ; 
 int /*<<< orphan*/  FUNC0 (int,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

__attribute__((used)) static void FUNC5(git_repository *repo, int format)
{
	int error = 0;
	const char *branch = NULL;
	git_reference *head = NULL;

	error = FUNC3(&head, repo);

	if (error == GIT_EUNBORNBRANCH || error == GIT_ENOTFOUND)
		branch = NULL;
	else if (!error) {
		branch = FUNC2(head);
	} else
		FUNC0(error, "failed to get current branch", NULL);

	if (format == FORMAT_LONG)
		FUNC4("# On branch %s\n",
			branch ? branch : "Not currently on any branch.");
	else
		FUNC4("## %s\n", branch ? branch : "HEAD (no branch)");

	FUNC1(head);
}