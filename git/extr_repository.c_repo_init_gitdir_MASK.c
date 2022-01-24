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
struct set_gitdir_args {int /*<<< orphan*/ * member_0; } ;
struct repository {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct repository*,char const*,struct set_gitdir_args*) ; 
 char* FUNC3 (char*,int*) ; 

__attribute__((used)) static int FUNC4(struct repository *repo, const char *gitdir)
{
	int ret = 0;
	int error = 0;
	char *abspath = NULL;
	const char *resolved_gitdir;
	struct set_gitdir_args args = { NULL };

	abspath = FUNC1(gitdir, 0);
	if (!abspath) {
		ret = -1;
		goto out;
	}

	/* 'gitdir' must reference the gitdir directly */
	resolved_gitdir = FUNC3(abspath, &error);
	if (!resolved_gitdir) {
		ret = -1;
		goto out;
	}

	FUNC2(repo, resolved_gitdir, &args);

out:
	FUNC0(abspath);
	return ret;
}