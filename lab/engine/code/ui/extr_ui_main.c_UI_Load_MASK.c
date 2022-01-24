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
struct TYPE_4__ {scalar_t__ name; } ;
struct TYPE_5__ {TYPE_1__ window; } ;
typedef  TYPE_2__ menuDef_t ;
typedef  int /*<<< orphan*/  lastName ;

/* Variables and functions */
 TYPE_2__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  qtrue ; 

void FUNC9(void) {
	char lastName[1024];
  menuDef_t *menu = FUNC0();
	char *menuSet = FUNC5("ui_menuFiles");
	if (menu && menu->window.name) {
		FUNC3(lastName, menu->window.name, sizeof(lastName));
	}
	if (menuSet == NULL || menuSet[0] == '\0') {
		menuSet = "ui/menus.txt";
	}

	FUNC4();

#ifdef PRE_RELEASE_TADEMO
	UI_ParseGameInfo("demogameinfo.txt");
#else
	FUNC8("gameinfo.txt");
	FUNC6();
#endif

	FUNC7(menuSet, qtrue);
	FUNC2();
	FUNC1(lastName);

}