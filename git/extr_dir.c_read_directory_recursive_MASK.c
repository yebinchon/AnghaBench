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
struct untracked_cache_dir {int check_only; } ;
struct strbuf {char* buf; int len; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {int flags; int /*<<< orphan*/  untracked; } ;
struct cached_dir {scalar_t__ fdir; int /*<<< orphan*/  de; } ;
typedef  enum path_treatment { ____Placeholder_path_treatment } path_treatment ;

/* Variables and functions */
 int DIR_COLLECT_IGNORED ; 
 int DIR_SHOW_IGNORED ; 
 int DIR_SHOW_IGNORED_TOO ; 
 int /*<<< orphan*/  DO_MATCH_LEADING_PATHSPEC ; 
 scalar_t__ DT_DIR ; 
 scalar_t__ MATCHED_RECURSIVELY_LEADING_PATHSPEC ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (struct untracked_cache_dir*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct cached_dir*) ; 
 int /*<<< orphan*/  FUNC2 (struct dir_struct*,struct index_state*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct dir_struct*,struct index_state*,char*,int) ; 
 scalar_t__ FUNC4 (struct index_state*,struct pathspec const*,char*,int,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,struct pathspec const*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,struct index_state*,char*,int) ; 
 struct untracked_cache_dir* FUNC7 (int /*<<< orphan*/ ,struct untracked_cache_dir*,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct index_state*,struct pathspec const*,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (struct cached_dir*,struct dir_struct*,struct untracked_cache_dir*,struct index_state*,struct strbuf*,int) ; 
#define  path_excluded 129 
 int path_none ; 
 int path_recurse ; 
#define  path_untracked 128 
 int /*<<< orphan*/  FUNC10 (struct cached_dir*) ; 
 int /*<<< orphan*/  FUNC11 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC12 (struct strbuf*) ; 
 int FUNC13 (struct dir_struct*,struct untracked_cache_dir*,struct cached_dir*,struct index_state*,struct strbuf*,int,struct pathspec const*) ; 

__attribute__((used)) static enum path_treatment FUNC14(struct dir_struct *dir,
	struct index_state *istate, const char *base, int baselen,
	struct untracked_cache_dir *untracked, int check_only,
	int stop_at_first_file, const struct pathspec *pathspec)
{
	struct cached_dir cdir;
	enum path_treatment state, subdir_state, dir_state = path_none;
	struct strbuf path = STRBUF_INIT;

	FUNC11(&path, base, baselen);

	if (FUNC9(&cdir, dir, untracked, istate, &path, check_only))
		goto out;

	if (untracked)
		untracked->check_only = !!check_only;

	while (!FUNC10(&cdir)) {
		/* check how the file or directory should be treated */
		state = FUNC13(dir, untracked, &cdir, istate, &path,
				   baselen, pathspec);

		if (state > dir_state)
			dir_state = state;

		/* recurse into subdir if instructed by treat_path */
		if ((state == path_recurse) ||
			((state == path_untracked) &&
			 (FUNC6(cdir.de, istate, path.buf, path.len) == DT_DIR) &&
			 ((dir->flags & DIR_SHOW_IGNORED_TOO) ||
			  (pathspec &&
			   FUNC4(istate, pathspec, path.buf, path.len,
					     baselen, NULL, DO_MATCH_LEADING_PATHSPEC) == MATCHED_RECURSIVELY_LEADING_PATHSPEC)))) {
			struct untracked_cache_dir *ud;
			ud = FUNC7(dir->untracked, untracked,
					      path.buf + baselen,
					      path.len - baselen);
			subdir_state =
				FUNC14(dir, istate, path.buf,
							 path.len, ud,
							 check_only, stop_at_first_file, pathspec);
			if (subdir_state > dir_state)
				dir_state = subdir_state;

			if (pathspec &&
			    !FUNC8(istate, pathspec, path.buf, path.len,
					    0 /* prefix */, NULL,
					    0 /* do NOT special case dirs */))
				state = path_none;
		}

		if (check_only) {
			if (stop_at_first_file) {
				/*
				 * If stopping at first file, then
				 * signal that a file was found by
				 * returning `path_excluded`. This is
				 * to return a consistent value
				 * regardless of whether an ignored or
				 * excluded file happened to be
				 * encountered 1st.
				 *
				 * In current usage, the
				 * `stop_at_first_file` is passed when
				 * an ancestor directory has matched
				 * an exclude pattern, so any found
				 * files will be excluded.
				 */
				if (dir_state >= path_excluded) {
					dir_state = path_excluded;
					break;
				}
			}

			/* abort early if maximum state has been reached */
			if (dir_state == path_untracked) {
				if (cdir.fdir)
					FUNC0(untracked, path.buf + baselen);
				break;
			}
			/* skip the dir_add_* part */
			continue;
		}

		/* add the path to the appropriate result list */
		switch (state) {
		case path_excluded:
			if (dir->flags & DIR_SHOW_IGNORED)
				FUNC3(dir, istate, path.buf, path.len);
			else if ((dir->flags & DIR_SHOW_IGNORED_TOO) ||
				((dir->flags & DIR_COLLECT_IGNORED) &&
				FUNC5(path.buf, path.len,
							 pathspec)))
				FUNC2(dir, istate, path.buf, path.len);
			break;

		case path_untracked:
			if (dir->flags & DIR_SHOW_IGNORED)
				break;
			FUNC3(dir, istate, path.buf, path.len);
			if (cdir.fdir)
				FUNC0(untracked, path.buf + baselen);
			break;

		default:
			break;
		}
	}
	FUNC1(&cdir);
 out:
	FUNC12(&path);

	return dir_state;
}