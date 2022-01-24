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
struct cmdnames {int /*<<< orphan*/  cnt; int /*<<< orphan*/  names; } ;

/* Variables and functions */
 int /*<<< orphan*/  PATH_SEP ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cmdname_compare ; 
 int /*<<< orphan*/  FUNC1 (struct cmdnames*,struct cmdnames*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 char* FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct cmdnames*,char const*,char const*) ; 
 char* FUNC6 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (struct cmdnames*) ; 
 char* FUNC9 (char const*) ; 

void FUNC10(const char *prefix,
		struct cmdnames *main_cmds,
		struct cmdnames *other_cmds)
{
	const char *env_path = FUNC3("PATH");
	const char *exec_path = FUNC4();

	if (exec_path) {
		FUNC5(main_cmds, exec_path, prefix);
		FUNC0(main_cmds->names, main_cmds->cnt, cmdname_compare);
		FUNC8(main_cmds);
	}

	if (env_path) {
		char *paths, *path, *colon;
		path = paths = FUNC9(env_path);
		while (1) {
			if ((colon = FUNC6(path, PATH_SEP)))
				*colon = 0;
			if (!exec_path || FUNC7(path, exec_path))
				FUNC5(other_cmds, path, prefix);

			if (!colon)
				break;
			path = colon + 1;
		}
		FUNC2(paths);

		FUNC0(other_cmds->names, other_cmds->cnt, cmdname_compare);
		FUNC8(other_cmds);
	}
	FUNC1(other_cmds, main_cmds);
}