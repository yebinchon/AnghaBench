#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct untracked_cache_dir {int dummy; } ;
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {int dummy; } ;
struct cached_dir {TYPE_1__* ucd; int /*<<< orphan*/  file; } ;
typedef  enum path_treatment { ____Placeholder_path_treatment } path_treatment ;
struct TYPE_2__ {scalar_t__ check_only; int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int path_recurse ; 
 int path_untracked ; 
 int FUNC0 (struct dir_struct*,struct index_state*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int,int /*<<< orphan*/ ,struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,int) ; 

__attribute__((used)) static enum path_treatment FUNC4(struct dir_struct *dir,
					   struct untracked_cache_dir *untracked,
					   struct cached_dir *cdir,
					   struct index_state *istate,
					   struct strbuf *path,
					   int baselen,
					   const struct pathspec *pathspec)
{
	FUNC3(path, baselen);
	if (!cdir->ucd) {
		FUNC1(path, cdir->file);
		return path_untracked;
	}
	FUNC1(path, cdir->ucd->name);
	/* treat_one_path() does this before it calls treat_directory() */
	FUNC2(path, '/');
	if (cdir->ucd->check_only)
		/*
		 * check_only is set as a result of treat_directory() getting
		 * to its bottom. Verify again the same set of directories
		 * with check_only set.
		 */
		return FUNC0(dir, istate, path->buf, path->len,
						cdir->ucd, 1, 0, pathspec);
	/*
	 * We get path_recurse in the first run when
	 * directory_exists_in_index() returns index_nonexistent. We
	 * are sure that new changes in the index does not impact the
	 * outcome. Return now.
	 */
	return path_recurse;
}