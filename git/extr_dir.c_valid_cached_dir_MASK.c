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
struct untracked_cache_dir {int valid; int check_only; int /*<<< orphan*/  stat_data; } ;
struct strbuf {char* buf; int /*<<< orphan*/  len; } ;
struct stat {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {TYPE_1__* untracked; } ;
struct TYPE_2__ {scalar_t__ use_fsmonitor; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,struct stat*) ; 
 scalar_t__ FUNC1 (char*,struct stat*) ; 
 scalar_t__ FUNC2 (struct index_state*,int /*<<< orphan*/ *,struct stat*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (struct dir_struct*,struct index_state*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct index_state*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC8(struct dir_struct *dir,
			    struct untracked_cache_dir *untracked,
			    struct index_state *istate,
			    struct strbuf *path,
			    int check_only)
{
	struct stat st;

	if (!untracked)
		return 0;

	/*
	 * With fsmonitor, we can trust the untracked cache's valid field.
	 */
	FUNC5(istate);
	if (!(dir->untracked->use_fsmonitor && untracked->valid)) {
		if (FUNC1(path->len ? path->buf : ".", &st)) {
			FUNC3(&untracked->stat_data, 0, sizeof(untracked->stat_data));
			return 0;
		}
		if (!untracked->valid ||
			FUNC2(istate, &untracked->stat_data, &st)) {
			FUNC0(&untracked->stat_data, &st);
			return 0;
		}
	}

	if (untracked->check_only != !!check_only)
		return 0;

	/*
	 * prep_exclude will be called eventually on this directory,
	 * but it's called much later in last_matching_pattern(). We
	 * need it now to determine the validity of the cache for this
	 * path. The next calls will be nearly no-op, the way
	 * prep_exclude() is designed.
	 */
	if (path->len && path->buf[path->len - 1] != '/') {
		FUNC6(path, '/');
		FUNC4(dir, istate, path->buf, path->len);
		FUNC7(path, path->len - 1);
	} else
		FUNC4(dir, istate, path->buf, path->len);

	/* hopefully prep_exclude() haven't invalidated this entry... */
	return untracked->valid;
}