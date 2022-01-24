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
typedef  int /*<<< orphan*/  git_remote ;
typedef  int /*<<< orphan*/  git_refspec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *,char const*) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

__attribute__((used)) static int FUNC5(git_repository *repo, const char *remote_name)
{
	git_remote *remote;
	int error;
	size_t i, count;

	/* we want to use what's on the config, regardless of changes to the instance in memory */
	if ((error = FUNC2(&remote, repo, remote_name)) < 0)
		return error;

	count = FUNC3(remote);
	for (i = 0; i < count; i++) {
		const git_refspec *refspec = FUNC1(remote, i);

		/* shouldn't ever actually happen */
		if (refspec == NULL)
			continue;

		if ((error = FUNC4(repo, refspec)) < 0)
			break;
	}

	FUNC0(remote);
	return error;
}