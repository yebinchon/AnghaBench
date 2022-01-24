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
typedef  int /*<<< orphan*/  git_refdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 

int FUNC3(git_repository *repo, const char *refname)
{
	int error;
	git_refdb *refdb;

	FUNC0(repo && refname);

	if ((error = FUNC2(&refdb, repo)) < 0)
		return error;

	return FUNC1(refdb, refname);
}