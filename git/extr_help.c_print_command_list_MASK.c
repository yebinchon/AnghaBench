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
struct cmdname_help {char* name; int category; int /*<<< orphan*/  help; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 size_t FUNC4 (char*) ; 

__attribute__((used)) static void FUNC5(const struct cmdname_help *cmds,
			       uint32_t mask, int longest)
{
	int i;

	for (i = 0; cmds[i].name; i++) {
		if (cmds[i].category & mask) {
			size_t len = FUNC4(cmds[i].name);
			FUNC2("   %s   ", cmds[i].name);
			if (longest > len)
				FUNC1(' ', longest - len);
			FUNC3(FUNC0(cmds[i].help));
		}
	}
}