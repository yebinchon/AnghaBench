#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct string_list {int dummy; } ;
struct cmdnames {int cnt; TYPE_1__** names; } ;
typedef  int /*<<< orphan*/  other_cmds ;
typedef  int /*<<< orphan*/  main_cmds ;
struct TYPE_2__ {int /*<<< orphan*/  name; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdnames*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct cmdnames*,struct cmdnames*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdnames*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (struct string_list*,int /*<<< orphan*/ ) ; 

void FUNC4(struct string_list *list)
{
	struct cmdnames main_cmds, other_cmds;
	int i;

	FUNC2(&main_cmds, 0, sizeof(main_cmds));
	FUNC2(&other_cmds, 0, sizeof(other_cmds));
	FUNC1("git-", &main_cmds, &other_cmds);

	for (i = 0; i < other_cmds.cnt; i++)
		FUNC3(list, other_cmds.names[i]->name);

	FUNC0(&main_cmds);
	FUNC0(&other_cmds);
}