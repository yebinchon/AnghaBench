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
 int /*<<< orphan*/  FUNC0 (unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (unsigned int) ; 
 unsigned int FUNC2 (unsigned int*,int /*<<< orphan*/ *,char const*) ; 

void FUNC3(
	git_repository *repo,
	const char *path,
	int status_flags)
{
	unsigned int status;

	if (status_flags < 0)
		FUNC0(status_flags, FUNC2(&status, repo, path));
	else {
		FUNC1(FUNC2(&status, repo, path));
		FUNC0((unsigned int)status_flags, status);
	}
}