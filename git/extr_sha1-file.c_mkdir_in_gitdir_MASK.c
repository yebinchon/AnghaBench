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
struct strbuf {char const* buf; } ;
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;

/* Variables and functions */
 int EEXIST ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (char const*) ; 
 int errno ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 scalar_t__ FUNC3 (char const*,struct stat*) ; 
 scalar_t__ FUNC4 (char const*,int) ; 
 scalar_t__ FUNC5 (struct strbuf*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

int FUNC7(const char *path)
{
	if (FUNC4(path, 0777)) {
		int saved_errno = errno;
		struct stat st;
		struct strbuf sb = STRBUF_INIT;

		if (errno != EEXIST)
			return -1;
		/*
		 * Are we looking at a path in a symlinked worktree
		 * whose original repository does not yet have it?
		 * e.g. .git/rr-cache pointing at its original
		 * repository in which the user hasn't performed any
		 * conflict resolution yet?
		 */
		if (FUNC3(path, &st) || !FUNC0(st.st_mode) ||
		    FUNC5(&sb, path, st.st_size) ||
		    !FUNC2(sb.buf) ||
		    FUNC4(sb.buf, 0777)) {
			FUNC6(&sb);
			errno = saved_errno;
			return -1;
		}
		FUNC6(&sb);
	}
	return FUNC1(path);
}