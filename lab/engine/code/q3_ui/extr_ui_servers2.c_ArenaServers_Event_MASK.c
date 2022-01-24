#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int id; } ;
typedef  TYPE_7__ menucommon_s ;
struct TYPE_14__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_13__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_12__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_11__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_10__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_9__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_16__ {TYPE_6__ punkbuster; int /*<<< orphan*/  list; TYPE_5__ showempty; TYPE_4__ showfull; TYPE_3__ sortkey; TYPE_2__ gametype; TYPE_1__ master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
#define  ID_BACK 142 
#define  ID_CONNECT 141 
#define  ID_CREATE 140 
#define  ID_GAMETYPE 139 
#define  ID_LIST 138 
#define  ID_MASTER 137 
#define  ID_PUNKBUSTER 136 
#define  ID_REFRESH 135 
#define  ID_REMOVE 134 
#define  ID_SCROLL_DOWN 133 
#define  ID_SCROLL_UP 132 
#define  ID_SHOW_EMPTY 131 
#define  ID_SHOW_FULL 130 
#define  ID_SORTKEY 129 
#define  ID_SPECIFY 128 
 int /*<<< orphan*/  K_DOWNARROW ; 
 int /*<<< orphan*/  K_UPARROW ; 
 int /*<<< orphan*/  Punkbuster_ConfirmDisable ; 
 int /*<<< orphan*/  Punkbuster_ConfirmEnable ; 
 int QM_ACTIVATED ; 
 int QM_GOTFOCUS ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int UI_CENTER ; 
 int /*<<< orphan*/  FUNC10 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int UI_INVERSE ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int UI_SMALLFONT ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 TYPE_8__ g_arenaservers ; 
 int /*<<< orphan*/  g_emptyservers ; 
 int /*<<< orphan*/  g_fullservers ; 
 int /*<<< orphan*/  g_gametype ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC15( void* ptr, int event ) {
	int		id;

	id = ((menucommon_s*)ptr)->id;

	if( event != QM_ACTIVATED && id != ID_LIST ) {
		return;
	}

	switch( id ) {
	case ID_MASTER:
		g_arenaservers.master.curvalue = FUNC3(g_arenaservers.master.curvalue);
		FUNC14( "ui_browserMaster", g_arenaservers.master.curvalue);
		break;

	case ID_GAMETYPE:
		FUNC14( "ui_browserGameType", g_arenaservers.gametype.curvalue );
		g_gametype = g_arenaservers.gametype.curvalue;
		FUNC7();
		break;

	case ID_SORTKEY:
		FUNC14( "ui_browserSortKey", g_arenaservers.sortkey.curvalue );
		FUNC4( g_arenaservers.sortkey.curvalue );
		FUNC7();
		break;

	case ID_SHOW_FULL:
		FUNC14( "ui_browserShowFull", g_arenaservers.showfull.curvalue );
		g_fullservers = g_arenaservers.showfull.curvalue;
		FUNC7();
		break;

	case ID_SHOW_EMPTY:
		FUNC14( "ui_browserShowEmpty", g_arenaservers.showempty.curvalue );
		g_emptyservers = g_arenaservers.showempty.curvalue;
		FUNC7();
		break;

	case ID_LIST:
		if( event == QM_GOTFOCUS ) {
			FUNC8();
		}
		break;

	case ID_SCROLL_UP:
		FUNC9( &g_arenaservers.list, K_UPARROW );
		break;

	case ID_SCROLL_DOWN:
		FUNC9( &g_arenaservers.list, K_DOWNARROW );
		break;

	case ID_BACK:
		FUNC6();
		FUNC2();
		FUNC11();
		break;

	case ID_REFRESH:
		FUNC5();
		break;

	case ID_SPECIFY:
		FUNC12();
		break;

	case ID_CREATE:
		FUNC13( qtrue );
		break;

	case ID_CONNECT:
		FUNC0();
		break;

	case ID_REMOVE:
		FUNC1();
		FUNC7();
		break;
	
	case ID_PUNKBUSTER:
		if (g_arenaservers.punkbuster.curvalue)			
		{
			FUNC10( "Enable Punkbuster?",  UI_CENTER|UI_INVERSE|UI_SMALLFONT, 0, Punkbuster_ConfirmEnable );
		}
		else
		{
			FUNC10( "Disable Punkbuster?", UI_CENTER|UI_INVERSE|UI_SMALLFONT, 0, Punkbuster_ConfirmDisable );
		}
		break;
	}
}