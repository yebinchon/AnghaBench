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
struct strbuf {char* buf; scalar_t__ len; } ;
struct child_process {int git_cmd; int no_stdin; int out; char const* dir; int /*<<< orphan*/  env_array; int /*<<< orphan*/  args; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 struct child_process CHILD_PROCESS_INIT ; 
 unsigned int DIRTY_SUBMODULE_MODIFIED ; 
 unsigned int DIRTY_SUBMODULE_UNTRACKED ; 
 scalar_t__ EOF ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (struct child_process*) ; 
 scalar_t__ FUNC7 (char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (char*) ; 
 scalar_t__ FUNC12 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC13 (struct strbuf*,char*,char const*) ; 
 scalar_t__ FUNC14 (struct strbuf*,int /*<<< orphan*/ *,char) ; 
 int /*<<< orphan*/  FUNC15 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC16 (struct strbuf*) ; 
 scalar_t__ FUNC17 (char*) ; 
 int /*<<< orphan*/ * FUNC18 (int,char*) ; 

unsigned FUNC19(const char *path, int ignore_untracked)
{
	struct child_process cp = CHILD_PROCESS_INIT;
	struct strbuf buf = STRBUF_INIT;
	FILE *fp;
	unsigned dirty_submodule = 0;
	const char *git_dir;
	int ignore_cp_exit_code = 0;

	FUNC13(&buf, "%s/.git", path);
	git_dir = FUNC11(buf.buf);
	if (!git_dir)
		git_dir = buf.buf;
	if (!FUNC8(git_dir)) {
		if (FUNC7(git_dir))
			FUNC4(FUNC1("'%s' not recognized as a git repository"), git_dir);
		FUNC15(&buf);
		/* The submodule is not checked out, so it is not modified */
		return 0;
	}
	FUNC16(&buf);

	FUNC3(&cp.args, "status", "--porcelain=2", NULL);
	if (ignore_untracked)
		FUNC2(&cp.args, "-uno");

	FUNC10(&cp.env_array);
	cp.git_cmd = 1;
	cp.no_stdin = 1;
	cp.out = -1;
	cp.dir = path;
	if (FUNC12(&cp))
		FUNC4("Could not run 'git status --porcelain=2' in submodule %s", path);

	fp = FUNC18(cp.out, "r");
	while (FUNC14(&buf, fp, '\n') != EOF) {
		/* regular untracked files */
		if (buf.buf[0] == '?')
			dirty_submodule |= DIRTY_SUBMODULE_UNTRACKED;

		if (buf.buf[0] == 'u' ||
		    buf.buf[0] == '1' ||
		    buf.buf[0] == '2') {
			/* T = line type, XY = status, SSSS = submodule state */
			if (buf.len < FUNC17("T XY SSSS"))
				FUNC0("invalid status --porcelain=2 line %s",
				    buf.buf);

			if (buf.buf[5] == 'S' && buf.buf[8] == 'U')
				/* nested untracked file */
				dirty_submodule |= DIRTY_SUBMODULE_UNTRACKED;

			if (buf.buf[0] == 'u' ||
			    buf.buf[0] == '2' ||
			    FUNC9(buf.buf + 5, "S..U", 4))
				/* other change */
				dirty_submodule |= DIRTY_SUBMODULE_MODIFIED;
		}

		if ((dirty_submodule & DIRTY_SUBMODULE_MODIFIED) &&
		    ((dirty_submodule & DIRTY_SUBMODULE_UNTRACKED) ||
		     ignore_untracked)) {
			/*
			 * We're not interested in any further information from
			 * the child any more, neither output nor its exit code.
			 */
			ignore_cp_exit_code = 1;
			break;
		}
	}
	FUNC5(fp);

	if (FUNC6(&cp) && !ignore_cp_exit_code)
		FUNC4("'git status --porcelain=2' failed in submodule %s", path);

	FUNC15(&buf);
	return dirty_submodule;
}