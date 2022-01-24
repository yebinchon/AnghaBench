#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_26__   TYPE_9__ ;
typedef  struct TYPE_25__   TYPE_8__ ;
typedef  struct TYPE_24__   TYPE_7__ ;
typedef  struct TYPE_23__   TYPE_6__ ;
typedef  struct TYPE_22__   TYPE_5__ ;
typedef  struct TYPE_21__   TYPE_4__ ;
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_13__ ;
typedef  struct TYPE_16__   TYPE_12__ ;
typedef  struct TYPE_15__   TYPE_11__ ;
typedef  struct TYPE_14__   TYPE_10__ ;

/* Type definitions */
struct TYPE_16__ {int id; } ;
typedef  TYPE_12__ menucommon_s ;
struct TYPE_26__ {int curvalue; } ;
struct TYPE_25__ {int curvalue; } ;
struct TYPE_24__ {int curvalue; } ;
struct TYPE_23__ {int curvalue; } ;
struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_20__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_15__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_17__ {TYPE_11__ allowdownload; TYPE_10__ drawteamoverlay; TYPE_9__ forcemodel; TYPE_8__ synceveryframe; TYPE_7__ identifytarget; TYPE_6__ dynamiclights; TYPE_5__ wallmarks; TYPE_4__ brass; TYPE_3__ highqualitysky; TYPE_2__ simpleitems; TYPE_1__ crosshair; } ;

/* Variables and functions */
#define  ID_ALLOWDOWNLOAD 139 
#define  ID_BACK 138 
#define  ID_CROSSHAIR 137 
#define  ID_DRAWTEAMOVERLAY 136 
#define  ID_DYNAMICLIGHTS 135 
#define  ID_EJECTINGBRASS 134 
#define  ID_FORCEMODEL 133 
#define  ID_HIGHQUALITYSKY 132 
#define  ID_IDENTIFYTARGET 131 
#define  ID_SIMPLEITEMS 130 
#define  ID_SYNCEVERYFRAME 129 
#define  ID_WALLMARKS 128 
 int QM_ACTIVATED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 TYPE_13__ s_preferences ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 

__attribute__((used)) static void FUNC3( void* ptr, int notification ) {
	if( notification != QM_ACTIVATED ) {
		return;
	}

	switch( ((menucommon_s*)ptr)->id ) {
	case ID_CROSSHAIR:
		FUNC2( "cg_drawCrosshair", s_preferences.crosshair.curvalue );
		break;

	case ID_SIMPLEITEMS:
		FUNC2( "cg_simpleItems", s_preferences.simpleitems.curvalue );
		break;

	case ID_HIGHQUALITYSKY:
		FUNC2( "r_fastsky", !s_preferences.highqualitysky.curvalue );
		break;

	case ID_EJECTINGBRASS:
		if ( s_preferences.brass.curvalue )
			FUNC1( "cg_brassTime" );
		else
			FUNC2( "cg_brassTime", 0 );
		break;

	case ID_WALLMARKS:
		FUNC2( "cg_marks", s_preferences.wallmarks.curvalue );
		break;

	case ID_DYNAMICLIGHTS:
		FUNC2( "r_dynamiclight", s_preferences.dynamiclights.curvalue );
		break;		

	case ID_IDENTIFYTARGET:
		FUNC2( "cg_drawCrosshairNames", s_preferences.identifytarget.curvalue );
		break;

	case ID_SYNCEVERYFRAME:
		FUNC2( "r_finish", s_preferences.synceveryframe.curvalue );
		break;

	case ID_FORCEMODEL:
		FUNC2( "cg_forcemodel", s_preferences.forcemodel.curvalue );
		break;

	case ID_DRAWTEAMOVERLAY:
		FUNC2( "cg_drawTeamOverlay", s_preferences.drawteamoverlay.curvalue );
		break;

	case ID_ALLOWDOWNLOAD:
		FUNC2( "cl_allowDownload", s_preferences.allowdownload.curvalue );
		FUNC2( "sv_allowDownload", s_preferences.allowdownload.curvalue );
		break;

	case ID_BACK:
		FUNC0();
		break;
	}
}