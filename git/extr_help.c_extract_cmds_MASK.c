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
typedef  int uint32_t ;
struct cmdname_help {int category; int /*<<< orphan*/ * name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdname_help*,int) ; 
 int FUNC1 (struct cmdname_help*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 struct cmdname_help* command_list ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(struct cmdname_help **p_cmds, uint32_t mask)
{
	int i, nr = 0;
	struct cmdname_help *cmds;

	if (FUNC1(command_list) == 0)
		FUNC2("empty command_list[] is a sign of broken generate-cmdlist.sh");

	FUNC0(cmds, FUNC1(command_list) + 1);

	for (i = 0; i < FUNC1(command_list); i++) {
		const struct cmdname_help *cmd = command_list + i;

		if (!(cmd->category & mask))
			continue;

		cmds[nr] = *cmd;
		cmds[nr].name = FUNC3(cmd->name, cmd->category);

		nr++;
	}
	cmds[nr].name = NULL;
	*p_cmds = cmds;
}