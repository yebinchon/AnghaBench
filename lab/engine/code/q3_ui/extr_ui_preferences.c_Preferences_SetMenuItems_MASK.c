#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_24__   TYPE_9__ ;
typedef  struct TYPE_23__   TYPE_8__ ;
typedef  struct TYPE_22__   TYPE_7__ ;
typedef  struct TYPE_21__   TYPE_6__ ;
typedef  struct TYPE_20__   TYPE_5__ ;
typedef  struct TYPE_19__   TYPE_4__ ;
typedef  struct TYPE_18__   TYPE_3__ ;
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;
typedef  struct TYPE_15__   TYPE_12__ ;
typedef  struct TYPE_14__   TYPE_11__ ;
typedef  struct TYPE_13__   TYPE_10__ ;

/* Type definitions */
struct TYPE_24__ {int curvalue; } ;
struct TYPE_23__ {int curvalue; } ;
struct TYPE_22__ {int curvalue; } ;
struct TYPE_21__ {int curvalue; } ;
struct TYPE_20__ {int curvalue; } ;
struct TYPE_19__ {int curvalue; } ;
struct TYPE_18__ {int curvalue; } ;
struct TYPE_17__ {int curvalue; } ;
struct TYPE_16__ {int curvalue; } ;
struct TYPE_14__ {int curvalue; } ;
struct TYPE_13__ {int /*<<< orphan*/  curvalue; } ;
struct TYPE_15__ {TYPE_11__ allowdownload; TYPE_10__ drawteamoverlay; TYPE_9__ forcemodel; TYPE_8__ synceveryframe; TYPE_7__ highqualitysky; TYPE_6__ dynamiclights; TYPE_5__ identifytarget; TYPE_4__ wallmarks; TYPE_3__ brass; TYPE_2__ simpleitems; TYPE_1__ crosshair; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,scalar_t__) ; 
 int NUM_CROSSHAIRS ; 
 TYPE_12__ s_preferences ; 
 scalar_t__ FUNC1 (char*) ; 

__attribute__((used)) static void FUNC2( void ) {
	s_preferences.crosshair.curvalue		= (int)FUNC1( "cg_drawCrosshair" ) % NUM_CROSSHAIRS;
	s_preferences.simpleitems.curvalue		= FUNC1( "cg_simpleItems" ) != 0;
	s_preferences.brass.curvalue			= FUNC1( "cg_brassTime" ) != 0;
	s_preferences.wallmarks.curvalue		= FUNC1( "cg_marks" ) != 0;
	s_preferences.identifytarget.curvalue	= FUNC1( "cg_drawCrosshairNames" ) != 0;
	s_preferences.dynamiclights.curvalue	= FUNC1( "r_dynamiclight" ) != 0;
	s_preferences.highqualitysky.curvalue	= FUNC1 ( "r_fastsky" ) == 0;
	s_preferences.synceveryframe.curvalue	= FUNC1( "r_finish" ) != 0;
	s_preferences.forcemodel.curvalue		= FUNC1( "cg_forcemodel" ) != 0;
	s_preferences.drawteamoverlay.curvalue	= FUNC0( 0, 3, FUNC1( "cg_drawTeamOverlay" ) );
	s_preferences.allowdownload.curvalue	= FUNC1( "cl_allowDownload" ) != 0;
}