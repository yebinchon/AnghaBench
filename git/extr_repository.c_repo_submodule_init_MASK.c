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
struct submodule {int /*<<< orphan*/  path; int /*<<< orphan*/  name; } ;
struct strbuf {int /*<<< orphan*/ * buf; } ;
struct repository {char* submodule_prefix; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 scalar_t__ FUNC0 (struct repository*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,struct repository*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,struct repository*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 char* FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

int FUNC6(struct repository *subrepo,
			struct repository *superproject,
			const struct submodule *sub)
{
	struct strbuf gitdir = STRBUF_INIT;
	struct strbuf worktree = STRBUF_INIT;
	int ret = 0;

	if (!sub) {
		ret = -1;
		goto out;
	}

	FUNC3(&gitdir, superproject, "%s/.git", sub->path);
	FUNC3(&worktree, superproject, "%s", sub->path);

	if (FUNC0(subrepo, gitdir.buf, worktree.buf)) {
		/*
		 * If initilization fails then it may be due to the submodule
		 * not being populated in the superproject's worktree.  Instead
		 * we can try to initilize the submodule by finding it's gitdir
		 * in the superproject's 'modules' directory.  In this case the
		 * submodule would not have a worktree.
		 */
		FUNC4(&gitdir);
		FUNC2(&gitdir, superproject,
				     "modules/%s", sub->name);

		if (FUNC0(subrepo, gitdir.buf, NULL)) {
			ret = -1;
			goto out;
		}
	}

	subrepo->submodule_prefix = FUNC5("%s%s/",
					    superproject->submodule_prefix ?
					    superproject->submodule_prefix :
					    "", sub->path);

out:
	FUNC1(&gitdir);
	FUNC1(&worktree);
	return ret;
}