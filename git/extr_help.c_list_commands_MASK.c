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
struct cmdnames {scalar_t__ cnt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct cmdnames*,unsigned int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC4 (char) ; 

void FUNC5(unsigned int colopts,
		   struct cmdnames *main_cmds, struct cmdnames *other_cmds)
{
	if (main_cmds->cnt) {
		const char *exec_path = FUNC1();
		FUNC3(FUNC0("available git commands in '%s'"), exec_path);
		FUNC4('\n');
		FUNC2(main_cmds, colopts);
		FUNC4('\n');
	}

	if (other_cmds->cnt) {
		FUNC3(FUNC0("git commands available from elsewhere on your $PATH"));
		FUNC4('\n');
		FUNC2(other_cmds, colopts);
		FUNC4('\n');
	}
}