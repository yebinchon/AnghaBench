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
struct wt_status {int /*<<< orphan*/  fp; scalar_t__ display_comment_prefix; scalar_t__ amend; int /*<<< orphan*/  submodule_summary; int /*<<< orphan*/  index_file; } ;
struct strbuf {int /*<<< orphan*/  buf; scalar_t__ len; } ;
struct child_process {int git_cmd; int no_stdin; int /*<<< orphan*/  args; int /*<<< orphan*/  env_array; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 struct strbuf STRBUF_INIT ; 
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct child_process*,struct strbuf*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*,char*) ; 
 char* FUNC9 (struct strbuf*,size_t*) ; 
 int /*<<< orphan*/  FUNC10 (struct strbuf*) ; 

__attribute__((used)) static void FUNC11(struct wt_status *s, int uncommitted)
{
	struct child_process sm_summary = CHILD_PROCESS_INIT;
	struct strbuf cmd_stdout = STRBUF_INIT;
	struct strbuf summary = STRBUF_INIT;
	char *summary_content;

	FUNC2(&sm_summary.env_array, "GIT_INDEX_FILE=%s",
			 s->index_file);

	FUNC1(&sm_summary.args, "submodule");
	FUNC1(&sm_summary.args, "summary");
	FUNC1(&sm_summary.args, uncommitted ? "--files" : "--cached");
	FUNC1(&sm_summary.args, "--for-status");
	FUNC1(&sm_summary.args, "--summary-limit");
	FUNC2(&sm_summary.args, "%d", s->submodule_summary);
	if (!uncommitted)
		FUNC1(&sm_summary.args, s->amend ? "HEAD^" : "HEAD");

	sm_summary.git_cmd = 1;
	sm_summary.no_stdin = 1;

	FUNC3(&sm_summary, &cmd_stdout, 1024);

	/* prepend header, only if there's an actual output */
	if (cmd_stdout.len) {
		if (uncommitted)
			FUNC8(&summary, FUNC0("Submodules changed but not updated:"));
		else
			FUNC8(&summary, FUNC0("Submodule changes to be committed:"));
		FUNC8(&summary, "\n\n");
	}
	FUNC7(&summary, &cmd_stdout);
	FUNC10(&cmd_stdout);

	if (s->display_comment_prefix) {
		size_t len;
		summary_content = FUNC9(&summary, &len);
		FUNC6(&summary, summary_content, len);
		FUNC5(summary_content);
	}

	FUNC4(summary.buf, s->fp);
	FUNC10(&summary);
}