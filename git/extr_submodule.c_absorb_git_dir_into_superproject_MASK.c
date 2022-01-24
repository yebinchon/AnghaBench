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
struct child_process {char const* dir; int git_cmd; int no_stdin; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;

/* Variables and functions */
 unsigned int ABSORB_GITDIR_RECURSE_SUBMODULES ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 int READ_GITFILE_ERR_NOT_A_REPO ; 
 int READ_GITFILE_ERR_STAT_FAILED ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char const* FUNC6 () ; 
 char const* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  null_oid ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int,char const*,int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (char const*) ; 
 char* FUNC13 (int /*<<< orphan*/ ,int*) ; 
 scalar_t__ FUNC14 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC15 (char*,char*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC17 (struct strbuf*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC18 (struct strbuf*,char const*) ; 
 int /*<<< orphan*/  FUNC19 (struct strbuf*) ; 
 struct submodule* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  the_repository ; 

void FUNC21(const char *path,
				      unsigned flags)
{
	int err_code;
	const char *sub_git_dir;
	struct strbuf gitdir = STRBUF_INIT;
	FUNC17(&gitdir, "%s/.git", path);
	sub_git_dir = FUNC13(gitdir.buf, &err_code);

	/* Not populated? */
	if (!sub_git_dir) {
		const struct submodule *sub;

		if (err_code == READ_GITFILE_ERR_STAT_FAILED) {
			/* unpopulated as expected */
			FUNC19(&gitdir);
			return;
		}

		if (err_code != READ_GITFILE_ERR_NOT_A_REPO)
			/* We don't know what broke here. */
			FUNC10(err_code, path, NULL);

		/*
		* Maybe populated, but no git directory was found?
		* This can happen if the superproject is a submodule
		* itself and was just absorbed. The absorption of the
		* superproject did not rewrite the git file links yet,
		* fix it now.
		*/
		sub = FUNC20(the_repository, &null_oid, path);
		if (!sub)
			FUNC4(FUNC1("could not lookup name for submodule '%s'"), path);
		FUNC3(path,
			FUNC8("modules/%s", sub->name), 0);
	} else {
		/* Is it already absorbed into the superprojects git dir? */
		char *real_sub_git_dir = FUNC11(sub_git_dir, 1);
		char *real_common_git_dir = FUNC11(FUNC6(), 1);

		if (!FUNC15(real_sub_git_dir, real_common_git_dir))
			FUNC12(path);

		FUNC5(real_sub_git_dir);
		FUNC5(real_common_git_dir);
	}
	FUNC19(&gitdir);

	if (flags & ABSORB_GITDIR_RECURSE_SUBMODULES) {
		struct child_process cp = CHILD_PROCESS_INIT;
		struct strbuf sb = STRBUF_INIT;

		if (flags & ~ABSORB_GITDIR_RECURSE_SUBMODULES)
			FUNC0("we don't know how to pass the flags down?");

		FUNC18(&sb, FUNC7());
		FUNC18(&sb, path);
		FUNC16(&sb, '/');

		cp.dir = path;
		cp.git_cmd = 1;
		cp.no_stdin = 1;
		FUNC2(&cp.args, "--super-prefix", sb.buf,
					   "submodule--helper",
					   "absorb-git-dirs", NULL);
		FUNC9(&cp.env_array);
		if (FUNC14(&cp))
			FUNC4(FUNC1("could not recurse into submodule '%s'"), path);

		FUNC19(&sb);
	}
}