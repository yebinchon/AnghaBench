#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_8__ ;
typedef  struct TYPE_18__   TYPE_7__ ;
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  string ;
struct TYPE_17__ {int /*<<< orphan*/  powerups; } ;
struct TYPE_18__ {TYPE_6__ s; TYPE_5__* client; scalar_t__ inuse; } ;
typedef  TYPE_7__ gentity_t ;
typedef  int /*<<< orphan*/  entry ;
typedef  int /*<<< orphan*/  clients ;
struct TYPE_20__ {int integer; } ;
struct TYPE_19__ {int* sortedClients; } ;
struct TYPE_15__ {int* stats; int /*<<< orphan*/  weapon; } ;
struct TYPE_13__ {int /*<<< orphan*/  location; } ;
struct TYPE_14__ {TYPE_2__ teamState; int /*<<< orphan*/  teamInfo; } ;
struct TYPE_12__ {int sessionTeam; scalar_t__ spectatorState; size_t spectatorClient; } ;
struct TYPE_16__ {TYPE_4__ ps; TYPE_3__ pers; TYPE_1__ sess; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ SPECTATOR_FOLLOW ; 
 size_t STAT_ARMOR ; 
 size_t STAT_HEALTH ; 
 int /*<<< orphan*/  SortClients ; 
 int TEAM_BLUE ; 
 int TEAM_MAXOVERLAY ; 
 int TEAM_RED ; 
 int TEAM_SPECTATOR ; 
 TYPE_7__* g_entities ; 
 TYPE_9__ g_maxclients ; 
 TYPE_8__ level ; 
 int /*<<< orphan*/  FUNC1 (int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*) ; 

void FUNC6( gentity_t *ent ) {
	char		entry[1024];
	char		string[8192];
	int			stringlength;
	int			i, j;
	gentity_t	*player;
	int			cnt;
	int			h, a;
	int			clients[TEAM_MAXOVERLAY];
	int			team;

	if ( ! ent->client->pers.teamInfo )
		return;

	// send team info to spectator for team of followed client
	if (ent->client->sess.sessionTeam == TEAM_SPECTATOR) {
		if ( ent->client->sess.spectatorState != SPECTATOR_FOLLOW
			|| ent->client->sess.spectatorClient < 0 ) {
			return;
		}
		team = g_entities[ ent->client->sess.spectatorClient ].client->sess.sessionTeam;
	} else {
		team = ent->client->sess.sessionTeam;
	}

	if (team != TEAM_RED && team != TEAM_BLUE) {
		return;
	}

	// figure out what client should be on the display
	// we are limited to 8, but we want to use the top eight players
	// but in client order (so they don't keep changing position on the overlay)
	for (i = 0, cnt = 0; i < g_maxclients.integer && cnt < TEAM_MAXOVERLAY; i++) {
		player = g_entities + level.sortedClients[i];
		if (player->inuse && player->client->sess.sessionTeam == team ) {
			clients[cnt++] = level.sortedClients[i];
		}
	}

	// We have the top eight players, sort them by clientNum
	FUNC1( clients, cnt, sizeof( clients[0] ), SortClients );

	// send the latest information on all clients
	string[0] = 0;
	stringlength = 0;

	for (i = 0, cnt = 0; i < g_maxclients.integer && cnt < TEAM_MAXOVERLAY; i++) {
		player = g_entities + i;
		if (player->inuse && player->client->sess.sessionTeam == team ) {

			h = player->client->ps.stats[STAT_HEALTH];
			a = player->client->ps.stats[STAT_ARMOR];
			if (h < 0) h = 0;
			if (a < 0) a = 0;

			FUNC0 (entry, sizeof(entry),
				" %i %i %i %i %i %i", 
//				level.sortedClients[i], player->client->pers.teamState.location, h, a, 
				i, player->client->pers.teamState.location, h, a, 
				player->client->ps.weapon, player->s.powerups);
			j = FUNC3(entry);
			if (stringlength + j >= sizeof(string))
				break;
			FUNC2 (string + stringlength, entry);
			stringlength += j;
			cnt++;
		}
	}

	FUNC4( ent-g_entities, FUNC5("tinfo %i %s", cnt, string) );
}