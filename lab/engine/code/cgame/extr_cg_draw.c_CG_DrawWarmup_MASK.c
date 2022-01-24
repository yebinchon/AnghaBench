#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ team; int /*<<< orphan*/  name; scalar_t__ infoValid; } ;
typedef  TYPE_2__ clientInfo_t ;
struct TYPE_8__ {int warmup; int warmupCount; int time; } ;
struct TYPE_5__ {int /*<<< orphan*/  count3Sound; int /*<<< orphan*/  count2Sound; int /*<<< orphan*/  count1Sound; } ;
struct TYPE_7__ {scalar_t__ gametype; int maxclients; TYPE_1__ media; TYPE_2__* clientinfo; } ;

/* Variables and functions */
 int BIGCHAR_WIDTH ; 
 int /*<<< orphan*/  FUNC0 (int,int,char const*,float) ; 
 int /*<<< orphan*/  FUNC1 (int,int,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (int,int,float,int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAN_ANNOUNCER ; 
 int GIANT_WIDTH ; 
 scalar_t__ GT_1FCTF ; 
 scalar_t__ GT_CTF ; 
 scalar_t__ GT_FFA ; 
 scalar_t__ GT_HARVESTER ; 
 scalar_t__ GT_OBELISK ; 
 scalar_t__ GT_TEAM ; 
 scalar_t__ GT_TOURNAMENT ; 
 int /*<<< orphan*/  ITEM_TEXTSTYLE_SHADOWEDMORE ; 
 scalar_t__ TEAM_FREE ; 
 TYPE_4__ cg ; 
 TYPE_3__ cgs ; 
 int /*<<< orphan*/  colorWhite ; 
 int /*<<< orphan*/  qfalse ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC6 (char*,int,...) ; 

__attribute__((used)) static void FUNC7( void ) {
	int			w;
	int			sec;
	int			i;
#ifdef MISSIONPACK
	float		scale;
#else
	int			cw;
#endif
	clientInfo_t	*ci1, *ci2;
	const char	*s;

	sec = cg.warmup;
	if ( !sec ) {
		return;
	}

	if ( sec < 0 ) {
		s = "Waiting for players";		
		w = FUNC2( s ) * BIGCHAR_WIDTH;
		FUNC0(320 - w / 2, 24, s, 1.0F);
		cg.warmupCount = 0;
		return;
	}

	if (cgs.gametype == GT_TOURNAMENT) {
		// find the two active players
		ci1 = NULL;
		ci2 = NULL;
		for ( i = 0 ; i < cgs.maxclients ; i++ ) {
			if ( cgs.clientinfo[i].infoValid && cgs.clientinfo[i].team == TEAM_FREE ) {
				if ( !ci1 ) {
					ci1 = &cgs.clientinfo[i];
				} else {
					ci2 = &cgs.clientinfo[i];
				}
			}
		}

		if ( ci1 && ci2 ) {
			s = FUNC6( "%s vs %s", ci1->name, ci2->name );
#ifdef MISSIONPACK
			w = CG_Text_Width(s, 0.6f, 0);
			CG_Text_Paint(320 - w / 2, 60, 0.6f, colorWhite, s, 0, 0, ITEM_TEXTSTYLE_SHADOWEDMORE);
#else
			w = FUNC2( s );
			if ( w > 640 / GIANT_WIDTH ) {
				cw = 640 / w;
			} else {
				cw = GIANT_WIDTH;
			}
			FUNC1( 320 - w * cw/2, 20,s, colorWhite, 
					qfalse, qtrue, cw, (int)(cw * 1.5f), 0 );
#endif
		}
	} else {
		if ( cgs.gametype == GT_FFA ) {
			s = "Free For All";
		} else if ( cgs.gametype == GT_TEAM ) {
			s = "Team Deathmatch";
		} else if ( cgs.gametype == GT_CTF ) {
			s = "Capture the Flag";
#ifdef MISSIONPACK
		} else if ( cgs.gametype == GT_1FCTF ) {
			s = "One Flag CTF";
		} else if ( cgs.gametype == GT_OBELISK ) {
			s = "Overload";
		} else if ( cgs.gametype == GT_HARVESTER ) {
			s = "Harvester";
#endif
		} else {
			s = "";
		}
#ifdef MISSIONPACK
		w = CG_Text_Width(s, 0.6f, 0);
		CG_Text_Paint(320 - w / 2, 90, 0.6f, colorWhite, s, 0, 0, ITEM_TEXTSTYLE_SHADOWEDMORE);
#else
		w = FUNC2( s );
		if ( w > 640 / GIANT_WIDTH ) {
			cw = 640 / w;
		} else {
			cw = GIANT_WIDTH;
		}
		FUNC1( 320 - w * cw/2, 25,s, colorWhite, 
				qfalse, qtrue, cw, (int)(cw * 1.1f), 0 );
#endif
	}

	sec = ( sec - cg.time ) / 1000;
	if ( sec < 0 ) {
		cg.warmup = 0;
		sec = 0;
	}
	s = FUNC6( "Starts in: %i", sec + 1 );
	if ( sec != cg.warmupCount ) {
		cg.warmupCount = sec;
		switch ( sec ) {
		case 0:
			FUNC5( cgs.media.count1Sound, CHAN_ANNOUNCER );
			break;
		case 1:
			FUNC5( cgs.media.count2Sound, CHAN_ANNOUNCER );
			break;
		case 2:
			FUNC5( cgs.media.count3Sound, CHAN_ANNOUNCER );
			break;
		default:
			break;
		}
	}

#ifdef MISSIONPACK
	switch ( cg.warmupCount ) {
	case 0:
		scale = 0.54f;
		break;
	case 1:
		scale = 0.51f;
		break;
	case 2:
		scale = 0.48f;
		break;
	default:
		scale = 0.45f;
		break;
	}

	w = CG_Text_Width(s, scale, 0);
	CG_Text_Paint(320 - w / 2, 125, scale, colorWhite, s, 0, 0, ITEM_TEXTSTYLE_SHADOWEDMORE);
#else
	switch ( cg.warmupCount ) {
	case 0:
		cw = 28;
		break;
	case 1:
		cw = 24;
		break;
	case 2:
		cw = 20;
		break;
	default:
		cw = 16;
		break;
	}

	w = FUNC2( s );
	FUNC1( 320 - w * cw/2, 70, s, colorWhite, 
			qfalse, qtrue, cw, (int)(cw * 1.5), 0 );
#endif
}