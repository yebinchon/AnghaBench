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
typedef  int tristate ;
struct symbol {char* name; } ;
struct menu {TYPE_1__* prompt; struct symbol* sym; } ;
struct TYPE_2__ {int /*<<< orphan*/  text; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol*,int /*<<< orphan*/ ) ; 
 char* indent ; 
 int* line ; 
 scalar_t__ FUNC2 (struct menu*) ; 
#define  mod 130 
#define  no 129 
 int /*<<< orphan*/  FUNC3 (struct menu*) ; 
 int /*<<< orphan*/  FUNC4 (char*,...) ; 
 int /*<<< orphan*/  FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (int*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (struct symbol*) ; 
 int FUNC9 (struct symbol*) ; 
 scalar_t__ FUNC10 (struct symbol*,int) ; 
 scalar_t__ FUNC11 (struct symbol*,int const) ; 
#define  yes 128 

__attribute__((used)) static int FUNC12(struct menu *menu)
{
	struct symbol *sym = menu->sym;
	tristate oldval, newval;

	while (1) {
		FUNC4("%*s%s ", indent - 1, "", FUNC0(menu->prompt->text));
		if (sym->name)
			FUNC4("(%s) ", sym->name);
		FUNC5('[');
		oldval = FUNC9(sym);
		switch (oldval) {
		case no:
			FUNC5('N');
			break;
		case mod:
			FUNC5('M');
			break;
		case yes:
			FUNC5('Y');
			break;
		}
		if (oldval != no && FUNC11(sym, no))
			FUNC4("/n");
		if (oldval != mod && FUNC11(sym, mod))
			FUNC4("/m");
		if (oldval != yes && FUNC11(sym, yes))
			FUNC4("/y");
		if (FUNC2(menu))
			FUNC4("/?");
		FUNC4("] ");
		if (!FUNC1(sym, FUNC8(sym)))
			return 0;
		FUNC7(line);

		switch (line[0]) {
		case 'n':
		case 'N':
			newval = no;
			if (!line[1] || !FUNC6(&line[1], "o"))
				break;
			continue;
		case 'm':
		case 'M':
			newval = mod;
			if (!line[1])
				break;
			continue;
		case 'y':
		case 'Y':
			newval = yes;
			if (!line[1] || !FUNC6(&line[1], "es"))
				break;
			continue;
		case 0:
			newval = oldval;
			break;
		case '?':
			goto help;
		default:
			continue;
		}
		if (FUNC10(sym, newval))
			return 0;
help:
		FUNC3(menu);
	}
}