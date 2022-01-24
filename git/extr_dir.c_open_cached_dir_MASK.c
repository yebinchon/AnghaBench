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
struct strbuf {char* buf; scalar_t__ len; } ;
struct index_state {int dummy; } ;
struct dir_struct {TYPE_1__* untracked; } ;
struct cached_dir {int /*<<< orphan*/  fdir; struct untracked_cache_dir* untracked; } ;
struct TYPE_2__ {int /*<<< orphan*/  dir_opened; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,struct untracked_cache_dir*) ; 
 int /*<<< orphan*/  FUNC2 (struct cached_dir*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 
 scalar_t__ FUNC4 (struct dir_struct*,struct untracked_cache_dir*,struct index_state*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char const*) ; 

__attribute__((used)) static int FUNC6(struct cached_dir *cdir,
			   struct dir_struct *dir,
			   struct untracked_cache_dir *untracked,
			   struct index_state *istate,
			   struct strbuf *path,
			   int check_only)
{
	const char *c_path;

	FUNC2(cdir, 0, sizeof(*cdir));
	cdir->untracked = untracked;
	if (FUNC4(dir, untracked, istate, path, check_only))
		return 0;
	c_path = path->len ? path->buf : ".";
	cdir->fdir = FUNC3(c_path);
	if (!cdir->fdir)
		FUNC5(FUNC0("could not open directory '%s'"), c_path);
	if (dir->untracked) {
		FUNC1(dir->untracked, untracked);
		dir->untracked->dir_opened++;
	}
	if (!cdir->fdir)
		return -1;
	return 0;
}