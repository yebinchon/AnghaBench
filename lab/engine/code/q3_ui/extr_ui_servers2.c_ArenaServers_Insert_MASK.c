#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int pingtime; scalar_t__ nettype; int gametype; int /*<<< orphan*/  gamename; void* bPB; void* maxPing; void* minPing; void* maxclients; void* numclients; int /*<<< orphan*/  mapname; int /*<<< orphan*/  hostname; int /*<<< orphan*/  adrstr; } ;
typedef  TYPE_1__ servernode_t ;
struct TYPE_4__ {scalar_t__* numservers; scalar_t__ maxservers; TYPE_1__* serverlist; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 char* FUNC2 (char*,char*) ; 
 int MAX_ADDRESSLENGTH ; 
 int MAX_HOSTNAMELENGTH ; 
 int MAX_MAPNAMELENGTH ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ UIAS_FAVORITES ; 
 void* FUNC6 (char*) ; 
 TYPE_2__ g_arenaservers ; 
 scalar_t__ g_servertype ; 
 char** gamenames ; 
 int /*<<< orphan*/  netnames ; 

__attribute__((used)) static void FUNC7( char* adrstr, char* info, int pingtime )
{
	servernode_t*	servernodeptr;
	char*			s;
	int				i;


	if ((pingtime >= FUNC1()) && (g_servertype != UIAS_FAVORITES))
	{
		// slow global or local servers do not get entered
		return;
	}

	if (*g_arenaservers.numservers >= g_arenaservers.maxservers) {
		// list full;
		servernodeptr = g_arenaservers.serverlist+(*g_arenaservers.numservers)-1;
	} else {
		// next slot
		servernodeptr = g_arenaservers.serverlist+(*g_arenaservers.numservers);
		(*g_arenaservers.numservers)++;
	}

	FUNC4( servernodeptr->adrstr, adrstr, MAX_ADDRESSLENGTH );

	FUNC4( servernodeptr->hostname, FUNC2( info, "hostname"), MAX_HOSTNAMELENGTH );
	FUNC3( servernodeptr->hostname );
	FUNC5( servernodeptr->hostname );

	FUNC4( servernodeptr->mapname, FUNC2( info, "mapname"), MAX_MAPNAMELENGTH );
	FUNC3( servernodeptr->mapname );
	FUNC5( servernodeptr->mapname );

	servernodeptr->numclients = FUNC6( FUNC2( info, "clients") );
	servernodeptr->maxclients = FUNC6( FUNC2( info, "sv_maxclients") );
	servernodeptr->pingtime   = pingtime;
	servernodeptr->minPing    = FUNC6( FUNC2( info, "minPing") );
	servernodeptr->maxPing    = FUNC6( FUNC2( info, "maxPing") );
	servernodeptr->bPB = FUNC6( FUNC2( info, "punkbuster") );

	/*
	s = Info_ValueForKey( info, "nettype" );
	for (i=0; ;i++)
	{
		if (!netnames[i])
		{
			servernodeptr->nettype = 0;
			break;
		}
		else if (!Q_stricmp( netnames[i], s ))
		{
			servernodeptr->nettype = i;
			break;
		}
	}
	*/
	servernodeptr->nettype = FUNC6(FUNC2(info, "nettype"));
	if (servernodeptr->nettype < 0 || servernodeptr->nettype >= FUNC0(netnames) - 1) {
		servernodeptr->nettype = 0;
	}

	s = FUNC2( info, "game");
	i = FUNC6( FUNC2( info, "gametype") );
	if( i < 0 ) {
		i = 0;
	}
	else if( i > 11 ) {
		i = 12;
	}
	if( *s ) {
		servernodeptr->gametype = i;//-1;
		FUNC4( servernodeptr->gamename, s, sizeof(servernodeptr->gamename) );
	}
	else {
		servernodeptr->gametype = i;
		FUNC4( servernodeptr->gamename, gamenames[i], sizeof(servernodeptr->gamename) );
	}
}