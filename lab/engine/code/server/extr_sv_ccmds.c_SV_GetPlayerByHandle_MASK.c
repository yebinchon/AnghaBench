#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* name; scalar_t__ state; } ;
typedef  TYPE_1__ client_t ;
typedef  int /*<<< orphan*/  cleanName ;
struct TYPE_9__ {int /*<<< orphan*/  integer; } ;
struct TYPE_8__ {int integer; } ;
struct TYPE_7__ {TYPE_1__* clients; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int FUNC6 (char*) ; 
 TYPE_4__* com_sv_running ; 
 TYPE_3__* sv_maxclients ; 
 TYPE_2__ svs ; 

__attribute__((used)) static client_t *FUNC7( void ) {
	client_t	*cl;
	int			i;
	char		*s;
	char		cleanName[64];

	// make sure server is running
	if ( !com_sv_running->integer ) {
		return NULL;
	}

	if ( FUNC0() < 2 ) {
		FUNC2( "No player specified.\n" );
		return NULL;
	}

	s = FUNC1(1);

	// Check whether this is a numeric player handle
	for(i = 0; s[i] >= '0' && s[i] <= '9'; i++);
	
	if(!s[i])
	{
		int plid = FUNC6(s);

		// Check for numeric playerid match
		if(plid >= 0 && plid < sv_maxclients->integer)
		{
			cl = &svs.clients[plid];
			
			if(cl->state)
				return cl;
		}
	}

	// check for a name match
	for ( i=0, cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++ ) {
		if ( !cl->state ) {
			continue;
		}
		if ( !FUNC4( cl->name, s ) ) {
			return cl;
		}

		FUNC5( cleanName, cl->name, sizeof(cleanName) );
		FUNC3( cleanName );
		if ( !FUNC4( cleanName, s ) ) {
			return cl;
		}
	}

	FUNC2( "Player %s is not on the server\n", s );

	return NULL;
}