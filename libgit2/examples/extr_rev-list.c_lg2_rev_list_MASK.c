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
typedef  int /*<<< orphan*/  git_revwalk ;
typedef  int /*<<< orphan*/  git_repository ;
typedef  int /*<<< orphan*/  git_oid ;

/* Variables and functions */
 int GIT_OID_HEXSZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,char**) ; 

int FUNC6(git_repository *repo, int argc, char **argv)
{
	git_revwalk *walk;
	git_oid oid;
	char buf[GIT_OID_HEXSZ+1];

	FUNC0(FUNC2(&walk, repo), "allocating revwalk", NULL);
	FUNC0(FUNC5(repo, walk, argc-1, argv+1), "parsing options", NULL);

	while (!FUNC3(&oid, walk)) {
		FUNC1(buf, &oid);
		buf[GIT_OID_HEXSZ] = '\0';
		FUNC4("%s\n", buf);
	}

	return 0;
}