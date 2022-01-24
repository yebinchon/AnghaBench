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
 int GIT_ENOTFOUND ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/ * FUNC2 (char*) ; 
 int FUNC3 (unsigned int*,int /*<<< orphan*/ *,char*) ; 

void FUNC4(void)
{
	int error;
	unsigned int status_flags;
	git_repository *repo = FUNC2("status");

	error = FUNC3(&status_flags, repo, "subdir");
	FUNC1(error);
	FUNC0(error != GIT_ENOTFOUND);
}