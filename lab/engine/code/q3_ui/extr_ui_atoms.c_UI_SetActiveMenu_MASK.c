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
typedef  int uiMenuCommand_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  NeedCDAction ; 
 int /*<<< orphan*/  NeedCDKeyAction ; 
#define  UIMENU_BAD_CD_KEY 134 
#define  UIMENU_INGAME 133 
#define  UIMENU_MAIN 132 
#define  UIMENU_NEED_CD 131 
#define  UIMENU_NONE 130 
#define  UIMENU_POSTGAME 129 
#define  UIMENU_TEAM 128 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

void FUNC7( uiMenuCommand_t menu ) {
	// this should be the ONLY way the menu system is brought up
	// ensure minimum menu data is cached
	FUNC1();

	switch ( menu ) {
	case UIMENU_NONE:
		FUNC3();
		return;
	case UIMENU_MAIN:
		FUNC5();
		return;
	case UIMENU_NEED_CD:
		FUNC2( "Insert the CD", 0, NeedCDAction );
		return;
	case UIMENU_BAD_CD_KEY:
		FUNC2( "Bad CD Key", 0, NeedCDKeyAction );
		return;
	case UIMENU_INGAME:
		/*
		//GRank
		UI_RankingsMenu();
		return;
		*/
		FUNC6( "cl_paused", "1" );
		FUNC4();
		return;
		
	case UIMENU_TEAM:
	case UIMENU_POSTGAME:
	default:
#ifndef NDEBUG
	  FUNC0("UI_SetActiveMenu: bad enum %d\n", menu );
#endif
	  break;
	}
}