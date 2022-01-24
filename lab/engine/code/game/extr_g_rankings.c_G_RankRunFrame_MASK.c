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
typedef  struct TYPE_17__   TYPE_11__ ;
typedef  struct TYPE_16__   TYPE_10__ ;

/* Type definitions */
typedef  int grank_status_t ;
struct TYPE_20__ {int svFlags; } ;
struct TYPE_18__ {int /*<<< orphan*/  clientNum; } ;
struct TYPE_24__ {TYPE_6__* client; TYPE_3__ r; int /*<<< orphan*/  inuse; TYPE_1__ s; } ;
typedef  TYPE_7__ gentity_t ;
struct TYPE_26__ {int integer; } ;
struct TYPE_25__ {int maxclients; scalar_t__ intermissiontime; int time; } ;
struct TYPE_22__ {int* persistant; } ;
struct TYPE_21__ {int netname; int enterTime; } ;
struct TYPE_19__ {int /*<<< orphan*/  sessionTeam; int /*<<< orphan*/  spectatorState; } ;
struct TYPE_23__ {int client_status; TYPE_5__ ps; TYPE_4__ pers; TYPE_2__ sess; } ;
struct TYPE_17__ {int integer; } ;
struct TYPE_16__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  EXEC_INSERT ; 
 int /*<<< orphan*/  GR_GAMEKEY ; 
 int /*<<< orphan*/  GT_TEAM ; 
 size_t PERS_MATCH_TIME ; 
 int /*<<< orphan*/  QGR_KEY_PLAYED_WITH ; 
#define  QGR_STATUS_ACTIVE 136 
#define  QGR_STATUS_BAD_PASSWORD 135 
#define  QGR_STATUS_ERROR 134 
#define  QGR_STATUS_INVALIDUSER 133 
#define  QGR_STATUS_NEW 132 
#define  QGR_STATUS_NO_MEMBERSHIP 131 
#define  QGR_STATUS_NO_USER 130 
#define  QGR_STATUS_SPECTATOR 129 
#define  QGR_STATUS_TIMEOUT 128 
 int /*<<< orphan*/  SPECTATOR_FREE ; 
 int SVF_BOT ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*,char*) ; 
 int /*<<< orphan*/  TEAM_SPECTATOR ; 
 TYPE_7__* g_entities ; 
 TYPE_11__ g_fraglimit ; 
 TYPE_10__ g_gametype ; 
 TYPE_9__ g_timelimit ; 
 TYPE_8__ level ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int const FUNC10 (int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int,char*) ; 
 char* FUNC13 (char*,int) ; 

void FUNC14()
{
	gentity_t*		ent;
	gentity_t*		ent2;
	grank_status_t	old_status;
	grank_status_t	status;
	int				time;
	int				i;
	int				j;

	if( !FUNC6() ) 
	{
		FUNC5( GR_GAMEKEY );
	}

	FUNC7();
	
	if( FUNC4() )
	{
		for( i = 0; i < level.maxclients; i++ )
		{
			ent = &(g_entities[i]);
			if ( !ent->inuse )
				continue;
			if ( ent->client == NULL )
				continue;
			if ( ent->r.svFlags & SVF_BOT)
			{
				// no bots in ranked games
				FUNC11( EXEC_INSERT, FUNC13("kick %s\n", 
					ent->client->pers.netname) );
				continue;
			}

			old_status = ent->client->client_status;
			status = FUNC10( i );
			
			if( ent->client->client_status != status )
			{
				// inform client of current status
				// not needed for client side log in
				FUNC12( i, FUNC13("rank_status %i\n",status) );
				if ( i == 0 )
				{
					int j = 0;
				}
				ent->client->client_status = status;
			}
			
			switch( status )
			{
			case QGR_STATUS_NEW:
			case QGR_STATUS_SPECTATOR:
				if( ent->client->sess.sessionTeam != TEAM_SPECTATOR )
				{
					ent->client->sess.sessionTeam = TEAM_SPECTATOR;
					ent->client->sess.spectatorState = SPECTATOR_FREE;
					FUNC0( ent );
					// make sure by now CS_GRAND rankingsGameID is ready
					FUNC12( i, FUNC13("rank_status %i\n",status) );
					FUNC12( i, "rank_menu\n" );
				}
				break;
			case QGR_STATUS_NO_USER:
			case QGR_STATUS_BAD_PASSWORD:
			case QGR_STATUS_TIMEOUT:
			case QGR_STATUS_NO_MEMBERSHIP:
			case QGR_STATUS_INVALIDUSER:
			case QGR_STATUS_ERROR:
				if( (ent->r.svFlags & SVF_BOT) == 0 )
				{
					FUNC9( ent->s.clientNum );
				}
				break;
			case QGR_STATUS_ACTIVE:
				if( (ent->client->sess.sessionTeam == TEAM_SPECTATOR) &&
					(g_gametype.integer < GT_TEAM) )
				{
					FUNC2( ent, "free" );
				}

				if( old_status != QGR_STATUS_ACTIVE )
				{
					// player has just become active
					for( j = 0; j < level.maxclients; j++ )
					{
						ent2 = &(g_entities[j]);
						if ( !ent2->inuse )
							continue;
						if ( ent2->client == NULL )
							continue;
						if ( ent2->r.svFlags & SVF_BOT)
							continue;

						if( (i != j) && (FUNC10( j ) == QGR_STATUS_ACTIVE) )
						{
							FUNC8( i, j, QGR_KEY_PLAYED_WITH, 1, 0 );
						}

						// send current scores so the player's rank will show 
						// up under the crosshair immediately
						FUNC1( ent2 );
					}
				}
				break;
			default:
				break;
			}
		}

		// don't let ranked games last forever
		if( ((g_fraglimit.integer == 0) || (g_fraglimit.integer > 100)) && 
			((g_timelimit.integer == 0) || (g_timelimit.integer > 1000)) )
		{
			FUNC3( "timelimit", "1000" );
		}
	}

	// tell time to clients so they can show current match rating
	if( level.intermissiontime == 0 )
	{
		for( i = 0; i < level.maxclients; i++ )
		{
			ent = &(g_entities[i]);
			if( ent->client == NULL )
			{
				continue;
			}

			time = (level.time - ent->client->pers.enterTime) / 1000;
			ent->client->ps.persistant[PERS_MATCH_TIME] = time;
		}
	}
}