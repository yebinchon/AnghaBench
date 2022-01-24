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
struct string_list {int nr; TYPE_1__* items; } ;
struct cmdname_help {char* name; int category; int /*<<< orphan*/  help; } ;
struct TYPE_2__ {char* string; int /*<<< orphan*/  util; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct cmdname_help*,int) ; 
 struct string_list STRING_LIST_INIT_DUP ; 
 char* FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (struct cmdname_help*) ; 
 int /*<<< orphan*/  get_alias ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct string_list*) ; 
 int /*<<< orphan*/  FUNC4 (struct string_list*) ; 
 int /*<<< orphan*/  main_categories ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct cmdname_help*,int,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (struct string_list*,int) ; 
 int /*<<< orphan*/  FUNC10 (struct string_list*) ; 
 size_t FUNC11 (char*) ; 

void FUNC12(void)
{
	struct string_list others = STRING_LIST_INIT_DUP;
	struct string_list alias_list = STRING_LIST_INIT_DUP;
	struct cmdname_help *aliases;
	int i, longest;

	FUNC8(FUNC1("See 'git help <command>' to read about a specific subcommand"));
	FUNC5(main_categories, &longest);

	FUNC4(&others);
	if (others.nr)
		FUNC7("\n%s\n", FUNC1("External commands"));
	for (i = 0; i < others.nr; i++)
		FUNC7("   %s\n", others.items[i].string);
	FUNC9(&others, 0);

	FUNC3(get_alias, &alias_list);
	FUNC10(&alias_list);

	for (i = 0; i < alias_list.nr; i++) {
		size_t len = FUNC11(alias_list.items[i].string);
		if (longest < len)
			longest = len;
	}

	if (alias_list.nr) {
		FUNC7("\n%s\n", FUNC1("Command aliases"));
		FUNC0(aliases, alias_list.nr + 1);
		for (i = 0; i < alias_list.nr; i++) {
			aliases[i].name = alias_list.items[i].string;
			aliases[i].help = alias_list.items[i].util;
			aliases[i].category = 1;
		}
		aliases[alias_list.nr].name = NULL;
		FUNC6(aliases, 1, longest);
		FUNC2(aliases);
	}
	FUNC9(&alias_list, 1);
}