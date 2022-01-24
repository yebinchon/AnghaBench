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
struct child_process {char const* trace2_hook_name; char* trace2_child_class; scalar_t__* argv; scalar_t__ git_cmd; int /*<<< orphan*/  dir; int /*<<< orphan*/  trace2_child_id; } ;

/* Variables and functions */
 struct strbuf STRBUF_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,int,char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct strbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct strbuf*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (struct strbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct strbuf*,char) ; 
 int /*<<< orphan*/  FUNC4 (struct strbuf*,char*,int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC5 (struct strbuf*,char*) ; 
 int /*<<< orphan*/  FUNC6 (struct strbuf*) ; 

__attribute__((used)) static void FUNC7(const char *file, int line,
			      uint64_t us_elapsed_absolute,
			      const struct child_process *cmd)
{
	const char *event_name = "child_start";
	struct strbuf buf_payload = STRBUF_INIT;

	if (cmd->trace2_hook_name) {
		FUNC4(&buf_payload, "[ch%d] class:hook hook:%s",
			    cmd->trace2_child_id, cmd->trace2_hook_name);
	} else {
		const char *child_class =
			cmd->trace2_child_class ? cmd->trace2_child_class : "?";
		FUNC4(&buf_payload, "[ch%d] class:%s",
			    cmd->trace2_child_id, child_class);
	}

	if (cmd->dir) {
		FUNC5(&buf_payload, " cd:");
		FUNC2(&buf_payload, cmd->dir);
	}

	FUNC5(&buf_payload, " argv:[");
	if (cmd->git_cmd) {
		FUNC5(&buf_payload, "git");
		if (cmd->argv[0])
			FUNC3(&buf_payload, ' ');
	}
	FUNC1(&buf_payload, cmd->argv);
	FUNC3(&buf_payload, ']');

	FUNC0(file, line, event_name, NULL, &us_elapsed_absolute,
			 NULL, NULL, &buf_payload);
	FUNC6(&buf_payload);
}