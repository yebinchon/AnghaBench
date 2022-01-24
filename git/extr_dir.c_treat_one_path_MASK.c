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
struct untracked_cache_dir {int dummy; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dirent {int dummy; } ;
struct dir_struct {int flags; } ;
typedef  enum path_treatment { ____Placeholder_path_treatment } path_treatment ;

/* Variables and functions */
 int DIR_COLLECT_KILLED_ONLY ; 
 int DIR_SHOW_IGNORED ; 
 int DIR_SHOW_IGNORED_TOO ; 
 int DIR_SHOW_IGNORED_TOO_MODE_MATCHING ; 
#define  DT_DIR 130 
#define  DT_LNK 129 
#define  DT_REG 128 
 int DT_UNKNOWN ; 
 scalar_t__ FUNC0 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (struct dirent*,struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ignore_case ; 
 int /*<<< orphan*/  FUNC2 (struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ index_nonexistent ; 
 int FUNC3 (struct dir_struct*,struct index_state*,int /*<<< orphan*/ ,int*) ; 
 int path_excluded ; 
 int path_none ; 
 int path_recurse ; 
 int path_untracked ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char) ; 
 int FUNC5 (struct dir_struct*,struct index_state*,struct untracked_cache_dir*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,struct pathspec const*) ; 

__attribute__((used)) static enum path_treatment FUNC6(struct dir_struct *dir,
					  struct untracked_cache_dir *untracked,
					  struct index_state *istate,
					  struct strbuf *path,
					  int baselen,
					  const struct pathspec *pathspec,
					  int dtype, struct dirent *de)
{
	int exclude;
	int has_path_in_index = !!FUNC2(istate, path->buf, path->len, ignore_case);
	enum path_treatment path_treatment;

	if (dtype == DT_UNKNOWN)
		dtype = FUNC1(de, istate, path->buf, path->len);

	/* Always exclude indexed files */
	if (dtype != DT_DIR && has_path_in_index)
		return path_none;

	/*
	 * When we are looking at a directory P in the working tree,
	 * there are three cases:
	 *
	 * (1) P exists in the index.  Everything inside the directory P in
	 * the working tree needs to go when P is checked out from the
	 * index.
	 *
	 * (2) P does not exist in the index, but there is P/Q in the index.
	 * We know P will stay a directory when we check out the contents
	 * of the index, but we do not know yet if there is a directory
	 * P/Q in the working tree to be killed, so we need to recurse.
	 *
	 * (3) P does not exist in the index, and there is no P/Q in the index
	 * to require P to be a directory, either.  Only in this case, we
	 * know that everything inside P will not be killed without
	 * recursing.
	 */
	if ((dir->flags & DIR_COLLECT_KILLED_ONLY) &&
	    (dtype == DT_DIR) &&
	    !has_path_in_index &&
	    (FUNC0(istate, path->buf, path->len) == index_nonexistent))
		return path_none;

	exclude = FUNC3(dir, istate, path->buf, &dtype);

	/*
	 * Excluded? If we don't explicitly want to show
	 * ignored files, ignore it
	 */
	if (exclude && !(dir->flags & (DIR_SHOW_IGNORED|DIR_SHOW_IGNORED_TOO)))
		return path_excluded;

	switch (dtype) {
	default:
		return path_none;
	case DT_DIR:
		FUNC4(path, '/');
		path_treatment = FUNC5(dir, istate, untracked,
						 path->buf, path->len,
						 baselen, exclude, pathspec);
		/*
		 * If 1) we only want to return directories that
		 * match an exclude pattern and 2) this directory does
		 * not match an exclude pattern but all of its
		 * contents are excluded, then indicate that we should
		 * recurse into this directory (instead of marking the
		 * directory itself as an ignored path).
		 */
		if (!exclude &&
		    path_treatment == path_excluded &&
		    (dir->flags & DIR_SHOW_IGNORED_TOO) &&
		    (dir->flags & DIR_SHOW_IGNORED_TOO_MODE_MATCHING))
			return path_recurse;
		return path_treatment;
	case DT_REG:
	case DT_LNK:
		return exclude ? path_excluded : path_untracked;
	}
}