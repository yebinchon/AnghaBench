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

/* Variables and functions */
 int /*<<< orphan*/  GIT_STATUS_WT_MODIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (unsigned int*,int /*<<< orphan*/ *,char*) ; 

void FUNC6(void)
{
	git_repository *repo = FUNC3("status");
	unsigned int status;

	FUNC4(repo, "core.autocrlf", true);

	FUNC2("status/current_file", "current_file\r\n");

	FUNC1(FUNC5(&status, repo, "current_file"));

	/* stat data on file should no longer match stat cache, even though
	 * file diff will be empty because of line-ending conversion - matches
	 * the Git command-line behavior here.
	 */
	FUNC0(GIT_STATUS_WT_MODIFIED, status);
}