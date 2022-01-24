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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC3 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ *) ; 

int FUNC4(git_repository *repo, const char *name)
{
	int error;

	FUNC0(repo && name);

	if ((error = FUNC1(repo, name)) < 0 ||
	    (error = FUNC2(repo, name)) < 0 ||
	    (error = FUNC3(repo, name, NULL)) < 0)
		return error;

	return 0;
}