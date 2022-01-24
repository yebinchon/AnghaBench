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
struct json_writer {int /*<<< orphan*/  json; } ;
struct child_process {char const* trace2_hook_name; char* trace2_child_class; char const* dir; int /*<<< orphan*/  argv; scalar_t__ git_cmd; int /*<<< orphan*/  use_shell; int /*<<< orphan*/  trace2_child_id; } ;

/* Variables and functions */
 struct json_writer JSON_WRITER_INIT ; 
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int,int /*<<< orphan*/ *,struct json_writer*) ; 
 int /*<<< orphan*/  FUNC1 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC4 (struct json_writer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct json_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct json_writer*,char*) ; 
 int /*<<< orphan*/  FUNC7 (struct json_writer*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct json_writer*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC9 (struct json_writer*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  tr2dst_event ; 

__attribute__((used)) static void FUNC11(const char *file, int line,
			      uint64_t us_elapsed_absolute,
			      const struct child_process *cmd)
{
	const char *event_name = "child_start";
	struct json_writer jw = JSON_WRITER_INIT;

	FUNC4(&jw, 0);
	FUNC0(event_name, file, line, NULL, &jw);
	FUNC7(&jw, "child_id", cmd->trace2_child_id);
	if (cmd->trace2_hook_name) {
		FUNC8(&jw, "child_class", "hook");
		FUNC8(&jw, "hook_name", cmd->trace2_hook_name);
	} else {
		const char *child_class =
			cmd->trace2_child_class ? cmd->trace2_child_class : "?";
		FUNC8(&jw, "child_class", child_class);
	}
	if (cmd->dir)
		FUNC8(&jw, "cd", cmd->dir);
	FUNC5(&jw, "use_shell", cmd->use_shell);
	FUNC6(&jw, "argv");
	if (cmd->git_cmd)
		FUNC2(&jw, "git");
	FUNC1(&jw, cmd->argv);
	FUNC3(&jw);
	FUNC3(&jw);

	FUNC10(&tr2dst_event, &jw.json);
	FUNC9(&jw);
}