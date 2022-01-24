#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_30__   TYPE_9__ ;
typedef  struct TYPE_29__   TYPE_8__ ;
typedef  struct TYPE_28__   TYPE_7__ ;
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_15__ ;
typedef  struct TYPE_20__   TYPE_14__ ;
typedef  struct TYPE_19__   TYPE_13__ ;
typedef  struct TYPE_18__   TYPE_12__ ;
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
struct TYPE_29__ {char* buffer; } ;
struct TYPE_30__ {TYPE_8__ field; } ;
struct TYPE_28__ {int curvalue; } ;
struct TYPE_26__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_27__ {TYPE_5__ field; } ;
struct TYPE_24__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_25__ {TYPE_3__ field; } ;
struct TYPE_22__ {int /*<<< orphan*/  buffer; } ;
struct TYPE_23__ {TYPE_1__ field; } ;
struct TYPE_17__ {char* name; } ;
struct TYPE_18__ {TYPE_11__ generic; } ;
struct TYPE_16__ {scalar_t__ curvalue; } ;
struct TYPE_21__ {int gametype; char* mapnamebuffer; TYPE_12__ mappic; TYPE_10__ pure; TYPE_9__ hostname; TYPE_7__ friendlyfire; TYPE_6__ timelimit; TYPE_4__ flaglimit; TYPE_2__ fraglimit; } ;
struct TYPE_19__ {int /*<<< orphan*/  string; } ;
struct TYPE_20__ {size_t currentmap; TYPE_13__ mapname; int /*<<< orphan*/ * maplist; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,...) ; 
#define  GT_CTF 131 
#define  GT_FFA 130 
#define  GT_TEAM 129 
#define  GT_TOURNAMENT 128 
 int /*<<< orphan*/  FUNC2 (char const*,char*) ; 
 int MAX_NAMELENGTH ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 char* FUNC9 (int /*<<< orphan*/ ) ; 
 TYPE_15__ s_serveroptions ; 
 TYPE_14__ s_startserver ; 
 int /*<<< orphan*/  FUNC10 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 

__attribute__((used)) static void FUNC12( void ) {
	static char picname[64];
	char		mapname[MAX_NAMELENGTH];
	const char	*info;

	switch( s_serveroptions.gametype ) {
	case GT_FFA:
	default:
		FUNC1( s_serveroptions.fraglimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_ffa_fraglimit" ) ) );
		FUNC1( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_ffa_timelimit" ) ) );
		break;

	case GT_TOURNAMENT:
		FUNC1( s_serveroptions.fraglimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_tourney_fraglimit" ) ) );
		FUNC1( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_tourney_timelimit" ) ) );
		break;

	case GT_TEAM:
		FUNC1( s_serveroptions.fraglimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_team_fraglimit" ) ) );
		FUNC1( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_team_timelimit" ) ) );
		s_serveroptions.friendlyfire.curvalue = (int)FUNC0( 0, 1, FUNC11( "ui_team_friendly" ) );
		break;

	case GT_CTF:
		FUNC1( s_serveroptions.flaglimit.field.buffer, 4, "%i", (int)FUNC0( 0, 100, FUNC11( "ui_ctf_capturelimit" ) ) );
		FUNC1( s_serveroptions.timelimit.field.buffer, 4, "%i", (int)FUNC0( 0, 999, FUNC11( "ui_ctf_timelimit" ) ) );
		s_serveroptions.friendlyfire.curvalue = (int)FUNC0( 0, 1, FUNC11( "ui_ctf_friendly" ) );
		break;
	}

	FUNC3( s_serveroptions.hostname.field.buffer, FUNC8( "sv_hostname" ), sizeof( s_serveroptions.hostname.field.buffer ) );
	s_serveroptions.pure.curvalue = FUNC0( 0, 1, FUNC11( "sv_pure" ) );

	// set the map pic
	info = FUNC9( s_startserver.maplist[ s_startserver.currentmap ]);
	FUNC3( mapname, FUNC2( info, "map"), MAX_NAMELENGTH );
	FUNC4( mapname );
	FUNC1( picname, 64, "levelshots/%s", mapname );
	s_serveroptions.mappic.generic.name = picname;

	// set the map name
	FUNC10( s_serveroptions.mapnamebuffer, s_startserver.mapname.string );
	FUNC4( s_serveroptions.mapnamebuffer );

	// get the player selections initialized
	FUNC6();
	FUNC7();

	// seed bot names
	FUNC5();
	FUNC7();
}