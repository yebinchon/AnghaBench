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
struct dirent {int /*<<< orphan*/  d_name; } ;
struct dir_struct {int dummy; } ;
struct cached_dir {struct dirent* de; } ;
typedef  enum path_treatment { ____Placeholder_path_treatment } path_treatment ;

/* Variables and functions */
 int FUNC0 (struct dirent*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int path_none ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int) ; 
 int FUNC6 (struct dir_struct*,struct untracked_cache_dir*,struct index_state*,struct strbuf*,int,struct pathspec const*,int,struct dirent*) ; 
 int FUNC7 (struct dir_struct*,struct untracked_cache_dir*,struct cached_dir*,struct index_state*,struct strbuf*,int,struct pathspec const*) ; 

__attribute__((used)) static enum path_treatment FUNC8(struct dir_struct *dir,
				      struct untracked_cache_dir *untracked,
				      struct cached_dir *cdir,
				      struct index_state *istate,
				      struct strbuf *path,
				      int baselen,
				      const struct pathspec *pathspec)
{
	int dtype;
	struct dirent *de = cdir->de;

	if (!de)
		return FUNC7(dir, untracked, cdir, istate, path,
				       baselen, pathspec);
	if (FUNC2(de->d_name) || !FUNC1(de->d_name, ".git"))
		return path_none;
	FUNC5(path, baselen);
	FUNC4(path, de->d_name);
	if (FUNC3(path->buf, path->len, pathspec))
		return path_none;

	dtype = FUNC0(de);
	return FUNC6(dir, untracked, istate, path, baselen, pathspec, dtype, de);
}