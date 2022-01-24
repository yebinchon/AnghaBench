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
 unsigned int GIT_STATUS_WT_NEW ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (unsigned int*,int /*<<< orphan*/ *,char*) ; 

void FUNC5(void)
{
	unsigned int status_flags;
	git_repository *repo = FUNC3("empty_standard_repo");

	FUNC1("empty_standard_repo/new_file", "new_file\n");

	FUNC2(FUNC4(&status_flags, repo, "new_file"));
	FUNC0(status_flags == GIT_STATUS_WT_NEW);
}