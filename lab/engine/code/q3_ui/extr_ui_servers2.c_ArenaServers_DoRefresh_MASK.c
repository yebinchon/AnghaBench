#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ refreshtime; scalar_t__ nextpingtime; size_t numqueriedservers; size_t numfavoriteaddresses; size_t currentping; char** favoriteaddresses; TYPE_1__* pinglist; } ;
struct TYPE_5__ {scalar_t__ realtime; } ;
struct TYPE_4__ {char* adrstr; int start; } ;

/* Variables and functions */
 int /*<<< orphan*/  AS_LOCAL ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  EXEC_APPEND ; 
 int /*<<< orphan*/  EXEC_NOW ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,char*) ; 
 int MAX_ADDRESSLENGTH ; 
 int MAX_INFO_STRING ; 
 int MAX_PINGREQUESTS ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 scalar_t__ UIAS_FAVORITES ; 
 scalar_t__ UIAS_LOCAL ; 
 TYPE_3__ g_arenaservers ; 
 scalar_t__ g_servertype ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int,char*,int,int*) ; 
 int /*<<< orphan*/  FUNC11 (int,char*,int) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,size_t,char*,int) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ) ; 
 TYPE_2__ uis ; 
 char* FUNC15 (char*,char*) ; 

__attribute__((used)) static void FUNC16( void )
{
	int		i;
	int		j;
	int		time;
	int		maxPing;
	char	adrstr[MAX_ADDRESSLENGTH];
	char	info[MAX_INFO_STRING];

	if (uis.realtime < g_arenaservers.refreshtime)
	{
	  if (g_servertype != UIAS_FAVORITES) {
			if (g_servertype == UIAS_LOCAL) {
				if (!FUNC14(AS_LOCAL)) {
					return;
				}
			}
			if (FUNC14(FUNC2()) < 0) {
			  // still waiting for response
			  return;
			}
	  }
	} else if (g_servertype == UIAS_LOCAL) {
		if (!FUNC14(AS_LOCAL)) {
			// no local servers found, check again
			FUNC8( EXEC_APPEND, "localservers\n" );
			g_arenaservers.refreshtime = uis.realtime + 5000;
			return;
		}
	}

	if (uis.realtime < g_arenaservers.nextpingtime)
	{
		// wait for time trigger
		return;
	}

	// trigger at 10Hz intervals
	g_arenaservers.nextpingtime = uis.realtime + 10;

	// process ping results
	maxPing = FUNC1();
	for (i=0; i<MAX_PINGREQUESTS; i++)
	{
		FUNC10( i, adrstr, MAX_ADDRESSLENGTH, &time );
		if (!adrstr[0])
		{
			// ignore empty or pending pings
			continue;
		}

		// find ping result in our local list
		for (j=0; j<MAX_PINGREQUESTS; j++)
			if (!FUNC6( adrstr, g_arenaservers.pinglist[j].adrstr ))
				break;

		if (j < MAX_PINGREQUESTS)
		{
			// found it
			if (!time)
			{
				time = uis.realtime - g_arenaservers.pinglist[j].start;
				if (time < maxPing)
				{
					// still waiting
					continue;
				}
			}

			if (time > maxPing)
			{
				// stale it out
				info[0] = '\0';
				time    = maxPing;

				// set hostname for nonresponsive favorite server
				if (g_servertype == UIAS_FAVORITES) {
					FUNC5( info, "hostname", adrstr );
					FUNC5( info, "game", "???" );
				}
			}
			else
			{
				FUNC11( i, info, MAX_INFO_STRING );
			}

			// insert ping results
			FUNC0( adrstr, info, time );

			// clear this query from internal list
			g_arenaservers.pinglist[j].adrstr[0] = '\0';
   		}

		// clear this query from external list
		FUNC9( i );
	}

	// get results of servers query
	// counts can increase as servers respond
	if (g_servertype == UIAS_FAVORITES) {
	  g_arenaservers.numqueriedservers = g_arenaservers.numfavoriteaddresses;
	} else {
	  g_arenaservers.numqueriedservers = FUNC14(FUNC2());
	}

//	if (g_arenaservers.numqueriedservers > g_arenaservers.maxservers)
//		g_arenaservers.numqueriedservers = g_arenaservers.maxservers;

	// send ping requests in reasonable bursts
	// iterate ping through all found servers
	for (i=0; i<MAX_PINGREQUESTS && g_arenaservers.currentping < g_arenaservers.numqueriedservers; i++)
	{
		if (FUNC12() >= MAX_PINGREQUESTS)
		{
			// ping queue is full
			break;
		}

		// find empty slot
		for (j=0; j<MAX_PINGREQUESTS; j++)
			if (!g_arenaservers.pinglist[j].adrstr[0])
				break;

		if (j >= MAX_PINGREQUESTS)
			// no empty slots available yet - wait for timeout
			break;

		// get an address to ping

		if (g_servertype == UIAS_FAVORITES) {
		  FUNC7( adrstr, g_arenaservers.favoriteaddresses[g_arenaservers.currentping] ); 		
		} else {
		  FUNC13(FUNC2(), g_arenaservers.currentping, adrstr, MAX_ADDRESSLENGTH );
		}

		FUNC7( g_arenaservers.pinglist[j].adrstr, adrstr );
		g_arenaservers.pinglist[j].start = uis.realtime;

		FUNC8( EXEC_NOW, FUNC15( "ping %s\n", adrstr )  );
		
		// advance to next server
		g_arenaservers.currentping++;
	}

	if (!FUNC12())
	{
		// all pings completed
		FUNC3();
		return;
	}

	// update the user interface with ping status
	FUNC4();
}