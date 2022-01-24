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
typedef  int /*<<< orphan*/  uint64_t ;
struct strbuf {int dummy; } ;
struct child_process {int /*<<< orphan*/  argv; scalar_t__ git_cmd; int /*<<< orphan*/  dir; int /*<<< orphan*/  trace2_child_id; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static void FUNC7(const char *file, int line,
			      uint64_t us_elapsed_absolute,
			      const struct child_process *cmd)
{
	struct strbuf buf_payload = STRBUF_INIT;

	FUNC4(&buf_payload, "child_start[%d]", cmd->trace2_child_id);

	if (cmd->dir) {
		FUNC5(&buf_payload, " cd ");
		FUNC2(&buf_payload, cmd->dir);
		FUNC5(&buf_payload, ";");
	}

	/*
	 * TODO if (cmd->env) { Consider dumping changes to environment. }
	 * See trace_add_env() in run-command.c as used by original trace.c
	 */

	FUNC3(&buf_payload, ' ');
	if (cmd->git_cmd)
		FUNC5(&buf_payload, "git ");
	FUNC1(&buf_payload, cmd->argv);

	FUNC0(file, line, &buf_payload);
	FUNC6(&buf_payload);
}