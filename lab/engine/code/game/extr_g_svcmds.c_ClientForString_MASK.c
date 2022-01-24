#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ connected; int /*<<< orphan*/  netname; } ;
struct TYPE_6__ {TYPE_1__ pers; } ;
typedef  TYPE_2__ gclient_t ;
struct TYPE_7__ {int maxclients; TYPE_2__* clients; } ;

/* Variables and functions */
 scalar_t__ CON_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC3 (char const*) ; 
 TYPE_3__ level ; 

gclient_t	*FUNC4( const char *s ) {
	gclient_t	*cl;
	int			i;
	int			idnum;

	// numeric values are just slot numbers
	if ( s[0] >= '0' && s[0] <= '9' ) {
		idnum = FUNC3( s );
		if ( idnum < 0 || idnum >= level.maxclients ) {
			FUNC0( "Bad client slot: %i\n", idnum );
			return NULL;
		}

		cl = &level.clients[idnum];
		if ( cl->pers.connected == CON_DISCONNECTED ) {
			FUNC1( "Client %i is not connected\n", idnum );
			return NULL;
		}
		return cl;
	}

	// check for a name match
	for ( i=0 ; i < level.maxclients ; i++ ) {
		cl = &level.clients[i];
		if ( cl->pers.connected == CON_DISCONNECTED ) {
			continue;
		}
		if ( !FUNC2( cl->pers.netname, s ) ) {
			return cl;
		}
	}

	FUNC1( "User %s is not on the server\n", s );

	return NULL;
}