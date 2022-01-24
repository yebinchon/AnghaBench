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
struct strbuf {int /*<<< orphan*/  len; int /*<<< orphan*/  buf; } ;
struct pathspec {int dummy; } ;
struct index_state {int dummy; } ;
struct dir_struct {int flags; } ;

/* Variables and functions */
 int DIR_SHOW_OTHER_DIRECTORIES ; 
 int /*<<< orphan*/  DT_DIR ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (char const*,char,int) ; 
 scalar_t__ path_none ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct pathspec const*) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char const*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (struct dir_struct*,int /*<<< orphan*/ *,struct index_state*,struct strbuf*,int,struct pathspec const*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC7(struct dir_struct *dir,
			      struct index_state *istate,
			      const char *path, int len,
			      const struct pathspec *pathspec)
{
	struct strbuf sb = STRBUF_INIT;
	int baselen, rc = 0;
	const char *cp;
	int old_flags = dir->flags;

	while (len && path[len - 1] == '/')
		len--;
	if (!len)
		return 1;
	baselen = 0;
	dir->flags &= ~DIR_SHOW_OTHER_DIRECTORIES;
	while (1) {
		cp = path + baselen + !!baselen;
		cp = FUNC1(cp, '/', path + len - cp);
		if (!cp)
			baselen = len;
		else
			baselen = cp - path;
		FUNC5(&sb, 0);
		FUNC3(&sb, path, baselen);
		if (!FUNC0(sb.buf))
			break;
		if (FUNC2(sb.buf, sb.len, pathspec))
			break;
		if (FUNC6(dir, NULL, istate, &sb, baselen, pathspec,
				   DT_DIR, NULL) == path_none)
			break; /* do not recurse into it */
		if (len <= baselen) {
			rc = 1;
			break; /* finished checking */
		}
	}
	FUNC4(&sb);
	dir->flags = old_flags;
	return rc;
}