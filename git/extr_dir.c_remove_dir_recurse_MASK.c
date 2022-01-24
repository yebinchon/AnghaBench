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
struct strbuf {int len; int /*<<< orphan*/  buf; } ;
struct stat {int /*<<< orphan*/  st_mode; } ;
struct object_id {int dummy; } ;
struct dirent {int /*<<< orphan*/  d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ EACCES ; 
 scalar_t__ ENOENT ; 
 int REMOVE_DIR_EMPTY_ONLY ; 
 int REMOVE_DIR_KEEP_NESTED_GIT ; 
 int REMOVE_DIR_KEEP_TOPLEVEL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ errno ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,struct stat*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ ) ; 
 struct dirent* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,struct object_id*) ; 
 int FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct strbuf *path, int flag, int *kept_up)
{
	DIR *dir;
	struct dirent *e;
	int ret = 0, original_len = path->len, len, kept_down = 0;
	int only_empty = (flag & REMOVE_DIR_EMPTY_ONLY);
	int keep_toplevel = (flag & REMOVE_DIR_KEEP_TOPLEVEL);
	struct object_id submodule_head;

	if ((flag & REMOVE_DIR_KEEP_NESTED_GIT) &&
	    !FUNC6(path->buf, "HEAD", &submodule_head)) {
		/* Do not descend and nuke a nested git work tree. */
		if (kept_up)
			*kept_up = 1;
		return 0;
	}

	flag &= ~REMOVE_DIR_KEEP_TOPLEVEL;
	dir = FUNC4(path->buf);
	if (!dir) {
		if (errno == ENOENT)
			return keep_toplevel ? -1 : 0;
		else if (errno == EACCES && !keep_toplevel)
			/*
			 * An empty dir could be removable even if it
			 * is unreadable:
			 */
			return FUNC7(path->buf);
		else
			return -1;
	}
	FUNC9(path, '/');

	len = path->len;
	while ((e = FUNC5(dir)) != NULL) {
		struct stat st;
		if (FUNC2(e->d_name))
			continue;

		FUNC10(path, len);
		FUNC8(path, e->d_name);
		if (FUNC3(path->buf, &st)) {
			if (errno == ENOENT)
				/*
				 * file disappeared, which is what we
				 * wanted anyway
				 */
				continue;
			/* fall thru */
		} else if (FUNC0(st.st_mode)) {
			if (!FUNC12(path, flag, &kept_down))
				continue; /* happy */
		} else if (!only_empty &&
			   (!FUNC11(path->buf) || errno == ENOENT)) {
			continue; /* happy, too */
		}

		/* path too long, stat fails, or non-directory still exists */
		ret = -1;
		break;
	}
	FUNC1(dir);

	FUNC10(path, original_len);
	if (!ret && !keep_toplevel && !kept_down)
		ret = (!FUNC7(path->buf) || errno == ENOENT) ? 0 : -1;
	else if (kept_up)
		/*
		 * report the uplevel that it is not an error that we
		 * did not rmdir() our directory.
		 */
		*kept_up = !ret;
	return ret;
}