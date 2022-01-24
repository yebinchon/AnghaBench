#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct symbol {int dummy; } ;
struct subtitle_part {int /*<<< orphan*/  entries; int /*<<< orphan*/ * text; } ;
struct menu {TYPE_1__* prompt; void* data; struct symbol* sym; } ;
struct TYPE_5__ {int /*<<< orphan*/  prev; } ;
struct TYPE_4__ {int /*<<< orphan*/  type; } ;

/* Variables and functions */
 int ERRDISPLAYTOOSMALL ; 
 int KEY_ESC ; 
 int /*<<< orphan*/  P_MENU ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct menu*) ; 
 int /*<<< orphan*/  child_count ; 
 int /*<<< orphan*/  FUNC2 (struct menu*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (struct menu*) ; 
 struct menu* current_menu ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct menu*,int*) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 scalar_t__ FUNC9 () ; 
 struct menu* FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (char) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 scalar_t__ FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 char* mconf_readme ; 
 void* FUNC16 (struct menu*) ; 
 char* menu_instructions ; 
 int /*<<< orphan*/  mod ; 
 int /*<<< orphan*/  no ; 
 int /*<<< orphan*/  FUNC17 () ; 
 struct menu rootmenu ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  setmod_text ; 
 int show_all_options ; 
 int /*<<< orphan*/  FUNC20 (struct menu*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  single_menu_mode ; 
 int /*<<< orphan*/  FUNC23 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC24 (struct symbol*) ; 
 int /*<<< orphan*/  FUNC25 (struct symbol*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (struct symbol*) ; 
 TYPE_2__ trail ; 
 int /*<<< orphan*/  yes ; 

__attribute__((used)) static void FUNC27(struct menu *menu, struct menu *active_menu)
{
	struct menu *submenu;
	const char *prompt = FUNC16(menu);
	struct subtitle_part stpart;
	struct symbol *sym;
	int res;
	int s_scroll = 0;

	if (menu != &rootmenu)
		stpart.text = FUNC16(menu);
	else
		stpart.text = NULL;
	FUNC14(&stpart.entries, &trail);

	while (1) {
		FUNC12();
		current_menu = menu;
		FUNC1(menu);
		if (!child_count)
			break;
		FUNC19();
		FUNC6();
		res = FUNC7(prompt ? FUNC0(prompt) : FUNC0("Main Menu"),
				  FUNC0(menu_instructions),
				  active_menu, &s_scroll);
		if (res == 1 || res == KEY_ESC || res == -ERRDISPLAYTOOSMALL)
			break;
		if (FUNC9() != 0) {
			if (!FUNC8())
				continue;
			if (!FUNC13())
				continue;
		}
		submenu = FUNC10();
		active_menu = FUNC10();
		if (submenu)
			sym = submenu->sym;
		else
			sym = NULL;

		switch (res) {
		case 0:
			switch (FUNC13()) {
			case 'm':
				if (single_menu_mode)
					submenu->data = (void *) (long) !submenu->data;
				else
					FUNC27(submenu, NULL);
				break;
			case 't':
				if (FUNC24(sym) && FUNC23(sym) == yes)
					FUNC2(submenu);
				else if (submenu->prompt->type == P_MENU)
					FUNC27(submenu, NULL);
				break;
			case 's':
				FUNC5(submenu);
				break;
			}
			break;
		case 2:
			if (sym)
				FUNC20(submenu);
			else {
				FUNC17();
				FUNC21(FUNC0("README"), FUNC0(mconf_readme));
			}
			break;
		case 3:
			FUNC17();
			FUNC4();
			break;
		case 4:
			FUNC17();
			FUNC3();
			break;
		case 5:
			if (FUNC11('t')) {
				if (FUNC25(sym, yes))
					break;
				if (FUNC25(sym, mod))
					FUNC22(NULL, setmod_text, 6, 74);
			}
			break;
		case 6:
			if (FUNC11('t'))
				FUNC25(sym, no);
			break;
		case 7:
			if (FUNC11('t'))
				FUNC25(sym, mod);
			break;
		case 8:
			if (FUNC11('t'))
				FUNC26(sym);
			else if (FUNC11('m'))
				FUNC27(submenu, NULL);
			break;
		case 9:
			FUNC18();
			break;
		case 10:
			show_all_options = !show_all_options;
			break;
		}
	}

	FUNC15(trail.prev);
}