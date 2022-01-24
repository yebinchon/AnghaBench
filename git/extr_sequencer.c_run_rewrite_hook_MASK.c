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
struct object_id {int dummy; } ;
struct child_process {char const** argv; int in; int stdout_to_stderr; char* trace2_hook_name; } ;

/* Variables and functions */
 struct child_process CHILD_PROCESS_INIT ; 
 int /*<<< orphan*/  SIGPIPE ; 
 int /*<<< orphan*/  SIG_IGN ; 
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC3 (struct object_id const*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct child_process*) ; 
 int /*<<< orphan*/  FUNC7 (struct strbuf*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct strbuf*) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC10(const struct object_id *oldoid,
			    const struct object_id *newoid)
{
	struct child_process proc = CHILD_PROCESS_INIT;
	const char *argv[3];
	int code;
	struct strbuf sb = STRBUF_INIT;

	argv[0] = FUNC1("post-rewrite");
	if (!argv[0])
		return 0;

	argv[1] = "amend";
	argv[2] = NULL;

	proc.argv = argv;
	proc.in = -1;
	proc.stdout_to_stderr = 1;
	proc.trace2_hook_name = "post-rewrite";

	code = FUNC6(&proc);
	if (code)
		return code;
	FUNC7(&sb, "%s %s\n", FUNC3(oldoid), FUNC3(newoid));
	FUNC5(SIGPIPE, SIG_IGN);
	FUNC9(proc.in, sb.buf, sb.len);
	FUNC0(proc.in);
	FUNC8(&sb);
	FUNC4(SIGPIPE);
	return FUNC2(&proc);
}