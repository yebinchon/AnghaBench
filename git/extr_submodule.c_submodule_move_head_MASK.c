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
struct submodule {int /*<<< orphan*/  name; } ;
struct strbuf {int /*<<< orphan*/  buf; } ;
struct child_process {int git_cmd; int no_stdin; char const* dir; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 int /*<<< orphan*/  ABSORB_GITDIR_RECURSE_SUBMODULES ; 
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 unsigned int SUBMODULE_MOVE_HEAD_DRY_RUN ; 
 unsigned int SUBMODULE_MOVE_HEAD_FORCE ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (char const*,char*,int) ; 
 char const* FUNC8 () ; 
 int FUNC9 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 (char const*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (char const*,int*) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char const*) ; 
 scalar_t__ FUNC18 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (struct strbuf*) ; 
 struct submodule* FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 scalar_t__ FUNC22 (struct submodule const*) ; 
 int /*<<< orphan*/  FUNC23 (char const*) ; 
 int /*<<< orphan*/  FUNC24 (struct submodule const*) ; 
 int /*<<< orphan*/  FUNC25 (char const*) ; 
 int /*<<< orphan*/  the_repository ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ ) ; 
 char* FUNC27 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC28(const char *path,
			 const char *old_head,
			 const char *new_head,
			 unsigned flags)
{
	int ret = 0;
	struct child_process cp = CHILD_PROCESS_INIT;
	const struct submodule *sub;
	int *error_code_ptr, error_code;

	if (!FUNC14(the_repository, path))
		return 0;

	if (flags & SUBMODULE_MOVE_HEAD_FORCE)
		/*
		 * Pass non NULL pointer to is_submodule_populated_gently
		 * to prevent die()-ing. We'll use connect_work_tree_and_git_dir
		 * to fixup the submodule in the force case later.
		 */
		error_code_ptr = &error_code;
	else
		error_code_ptr = NULL;

	if (old_head && !FUNC15(path, error_code_ptr))
		return 0;

	sub = FUNC21(the_repository, &null_oid, path);

	if (!sub)
		FUNC0("could not get submodule information for '%s'", path);

	if (old_head && !(flags & SUBMODULE_MOVE_HEAD_FORCE)) {
		/* Check if the submodule has a dirty index. */
		if (FUNC22(sub))
			return FUNC9(FUNC1("submodule '%s' has dirty index"), path);
	}

	if (!(flags & SUBMODULE_MOVE_HEAD_DRY_RUN)) {
		if (old_head) {
			if (!FUNC25(path))
				FUNC2(path,
					ABSORB_GITDIR_RECURSE_SUBMODULES);
		} else {
			char *gitdir = FUNC27("%s/modules/%s",
				    FUNC11(), sub->name);
			FUNC7(path, gitdir, 0);
			FUNC10(gitdir);

			/* make sure the index is clean as well */
			FUNC23(path);
		}

		if (old_head && (flags & SUBMODULE_MOVE_HEAD_FORCE)) {
			char *gitdir = FUNC27("%s/modules/%s",
				    FUNC11(), sub->name);
			FUNC7(path, gitdir, 1);
			FUNC10(gitdir);
		}
	}

	FUNC16(&cp.env_array);

	cp.git_cmd = 1;
	cp.no_stdin = 1;
	cp.dir = path;

	FUNC4(&cp.args, "--super-prefix=%s%s/",
			FUNC12(), path);
	FUNC5(&cp.args, "read-tree", "--recurse-submodules", NULL);

	if (flags & SUBMODULE_MOVE_HEAD_DRY_RUN)
		FUNC3(&cp.args, "-n");
	else
		FUNC3(&cp.args, "-u");

	if (flags & SUBMODULE_MOVE_HEAD_FORCE)
		FUNC3(&cp.args, "--reset");
	else
		FUNC3(&cp.args, "-m");

	if (!(flags & SUBMODULE_MOVE_HEAD_FORCE))
		FUNC3(&cp.args, old_head ? old_head : FUNC8());

	FUNC3(&cp.args, new_head ? new_head : FUNC8());

	if (FUNC18(&cp)) {
		ret = FUNC9(FUNC1("Submodule '%s' could not be updated."), path);
		goto out;
	}

	if (!(flags & SUBMODULE_MOVE_HEAD_DRY_RUN)) {
		if (new_head) {
			FUNC6(&cp);
			/* also set the HEAD accordingly */
			cp.git_cmd = 1;
			cp.no_stdin = 1;
			cp.dir = path;

			FUNC16(&cp.env_array);
			FUNC5(&cp.args, "update-ref", "HEAD",
					 "--no-deref", new_head, NULL);

			if (FUNC18(&cp)) {
				ret = -1;
				goto out;
			}
		} else {
			struct strbuf sb = STRBUF_INIT;

			FUNC19(&sb, "%s/.git", path);
			FUNC26(sb.buf);
			FUNC20(&sb);

			if (FUNC13(path))
				FUNC17(path);

			FUNC24(sub);
		}
	}
out:
	return ret;
}