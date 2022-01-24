#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int uint32_t ;
struct TYPE_11__ {char* content; int /*<<< orphan*/  mode; scalar_t__ path; } ;
typedef  TYPE_1__ repo_template_item ;
typedef  int /*<<< orphan*/  mode_t ;
struct TYPE_12__ {int flags; scalar_t__ mode; char* template_path; char* description; } ;
typedef  TYPE_2__ git_repository_init_options ;
typedef  int /*<<< orphan*/  git_config ;
struct TYPE_13__ {char* ptr; } ;
typedef  TYPE_3__ git_buf ;

/* Variables and functions */
 TYPE_3__ GIT_BUF_INIT ; 
 int GIT_CPDIR_CHMOD_DIRS ; 
 int GIT_CPDIR_COPY_DOTFILES ; 
 int GIT_CPDIR_COPY_SYMLINKS ; 
 int GIT_CPDIR_SIMPLE_TO_MODE ; 
 int /*<<< orphan*/  GIT_DESC_FILE ; 
 int /*<<< orphan*/  GIT_ERROR_OS ; 
 int GIT_MKDIR_CHMOD ; 
 int GIT_MKDIR_PATH ; 
 int GIT_REPOSITORY_INIT_BARE ; 
 int GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE ; 
 int GIT_REPOSITORY_INIT_RELATIVE_GITLINK ; 
 scalar_t__ GIT_REPOSITORY_INIT_SHARED_UMASK ; 
 int GIT_REPOSITORY_INIT__HAS_DOTGIT ; 
 int GIT_REPOSITORY_INIT__NATURAL_WD ; 
 scalar_t__ FUNC0 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ *,char*) ; 
 int FUNC4 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 
 int FUNC7 (char const*,char const*,int,int /*<<< orphan*/ ) ; 
 int FUNC8 (scalar_t__,char const*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int FUNC9 (TYPE_3__*) ; 
 scalar_t__ FUNC10 (char const*,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*) ; 
 TYPE_1__* repo_template ; 
 scalar_t__ FUNC12 (char const*,char const*,int) ; 
 int FUNC13 (char const*,int,scalar_t__,int /*<<< orphan*/ ,int,char const*) ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC15(
	const char *repo_dir,
	const char *work_dir,
	git_repository_init_options *opts)
{
	int error = 0;
	repo_template_item *tpl;
	bool external_tpl =
		((opts->flags & GIT_REPOSITORY_INIT_EXTERNAL_TEMPLATE) != 0);
	mode_t dmode = FUNC11(opts);
	bool chmod = opts->mode != GIT_REPOSITORY_INIT_SHARED_UMASK;

	/* Hide the ".git" directory */
#ifdef GIT_WIN32
	if ((opts->flags & GIT_REPOSITORY_INIT__HAS_DOTGIT) != 0) {
		if (git_win32__set_hidden(repo_dir, true) < 0) {
			git_error_set(GIT_ERROR_OS,
				"failed to mark Git repository folder as hidden");
			return -1;
		}
	}
#endif

	/* Create the .git gitlink if appropriate */
	if ((opts->flags & GIT_REPOSITORY_INIT_BARE) == 0 &&
		(opts->flags & GIT_REPOSITORY_INIT__NATURAL_WD) == 0)
	{
		if (FUNC12(work_dir, repo_dir, opts->flags & GIT_REPOSITORY_INIT_RELATIVE_GITLINK) < 0)
			return -1;
	}

	/* Copy external template if requested */
	if (external_tpl) {
		git_config *cfg = NULL;
		const char *tdir = NULL;
		bool default_template = false;
		git_buf template_buf = GIT_BUF_INIT;

		if (opts->template_path)
			tdir = opts->template_path;
		else if ((error = FUNC4(&cfg)) >= 0) {
			if (!FUNC3(&template_buf, cfg, "init.templatedir"))
				tdir = template_buf.ptr;
			FUNC5();
		}

		if (!tdir) {
			if (!(error = FUNC9(&template_buf)))
				tdir = template_buf.ptr;
			default_template = true;
		}

		/*
		 * If tdir was the empty string, treat it like tdir was a path to an
		 * empty directory (so, don't do any copying). This is the behavior
		 * that git(1) exhibits, although it doesn't seem to be officially
		 * documented.
		 */
		if (tdir && FUNC0(tdir, "") != 0) {
			uint32_t cpflags = GIT_CPDIR_COPY_SYMLINKS |
				GIT_CPDIR_SIMPLE_TO_MODE |
				GIT_CPDIR_COPY_DOTFILES;
			if (opts->mode != GIT_REPOSITORY_INIT_SHARED_UMASK)
					cpflags |= GIT_CPDIR_CHMOD_DIRS;
			error = FUNC7(tdir, repo_dir, cpflags, dmode);
		}

		FUNC1(&template_buf);
		FUNC2(cfg);

		if (error < 0) {
			if (!default_template)
				return error;

			/* if template was default, ignore error and use internal */
			FUNC5();
			external_tpl = false;
			error = 0;
		}
	}

	/* Copy internal template
	 * - always ensure existence of dirs
	 * - only create files if no external template was specified
	 */
	for (tpl = repo_template; !error && tpl->path; ++tpl) {
		if (!tpl->content) {
			uint32_t mkdir_flags = GIT_MKDIR_PATH;
			if (chmod)
				mkdir_flags |= GIT_MKDIR_CHMOD;

			error = FUNC8(
				tpl->path, repo_dir, dmode, mkdir_flags, NULL);
		}
		else if (!external_tpl) {
			const char *content = tpl->content;

			if (opts->description && FUNC14(tpl->path, GIT_DESC_FILE) == 0)
				content = opts->description;

			error = FUNC13(
				repo_dir, false, tpl->path, tpl->mode, false, content);
		}
	}

	return error;
}