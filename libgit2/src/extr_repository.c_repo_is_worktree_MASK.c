#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  gitdir; scalar_t__ commondir; } ;
typedef  TYPE_1__ git_repository ;
struct TYPE_8__ {int /*<<< orphan*/  ptr; } ;
typedef  TYPE_2__ git_buf ;

/* Variables and functions */
 TYPE_2__ GIT_BUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(unsigned *out, const git_repository *repo)
{
	git_buf gitdir_link = GIT_BUF_INIT;
	int error;

	/* Worktrees cannot have the same commondir and gitdir */
	if (repo->commondir && repo->gitdir
	    && !FUNC3(repo->commondir, repo->gitdir)) {
		*out = 0;
		return 0;
	}

	if ((error = FUNC1(&gitdir_link, repo->gitdir, "gitdir")) < 0)
		return -1;

	/* A 'gitdir' file inside a git directory is currently
	 * only used when the repository is a working tree. */
	*out = !!FUNC2(gitdir_link.ptr);

	FUNC0(&gitdir_link);
	return error;
}