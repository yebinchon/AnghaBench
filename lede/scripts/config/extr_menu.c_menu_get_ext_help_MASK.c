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
struct symbol {scalar_t__ name; } ;
struct menu {struct symbol* sym; } ;
struct gstr {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  CONFIG_ ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct gstr*,struct symbol*,int /*<<< orphan*/ *) ; 
 char* FUNC2 (struct menu*) ; 
 scalar_t__ FUNC3 (struct menu*) ; 
 char* nohelp_text ; 
 int /*<<< orphan*/  FUNC4 (struct gstr*,char*,int /*<<< orphan*/ ,...) ; 

void FUNC5(struct menu *menu, struct gstr *help)
{
	struct symbol *sym = menu->sym;
	const char *help_text = nohelp_text;

	if (FUNC3(menu)) {
		if (sym->name)
			FUNC4(help, "%s%s:\n\n", CONFIG_, sym->name);
		help_text = FUNC2(menu);
	}
	FUNC4(help, "%s\n", FUNC0(help_text));
	if (sym)
		FUNC1(help, sym, NULL);
}