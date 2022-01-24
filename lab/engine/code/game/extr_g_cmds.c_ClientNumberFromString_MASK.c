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
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  gentity_t ;
struct TYPE_4__ {scalar_t__ connected; int /*<<< orphan*/  netname; } ;
struct TYPE_5__ {TYPE_1__ pers; } ;
typedef  TYPE_2__ gclient_t ;
typedef  int /*<<< orphan*/  cleanName ;
struct TYPE_6__ {int maxclients; TYPE_2__* clients; } ;

/* Variables and functions */
 scalar_t__ CON_CONNECTED ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC3 (char*) ; 
 int FUNC4 (char*) ; 
 int g_entities ; 
 TYPE_3__ level ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

int FUNC7( gentity_t *to, char *s, qboolean checkNums, qboolean checkNames ) {
	gclient_t	*cl;
	int			idnum;
	char		cleanName[MAX_STRING_CHARS];

	if ( checkNums ) {
		// numeric values could be slot numbers
		if ( FUNC3( s ) ) {
			idnum = FUNC4( s );
			if ( idnum >= 0 && idnum < level.maxclients ) {
				cl = &level.clients[idnum];
				if ( cl->pers.connected == CON_CONNECTED ) {
					return idnum;
				}
			}
		}
	}

	if ( checkNames ) {
		// check for a name match
		for ( idnum=0,cl=level.clients ; idnum < level.maxclients ; idnum++,cl++ ) {
			if ( cl->pers.connected != CON_CONNECTED ) {
				continue;
			}
			FUNC2(cleanName, cl->pers.netname, sizeof(cleanName));
			FUNC0(cleanName);
			if ( !FUNC1( cleanName, s ) ) {
				return idnum;
			}
		}
	}

	FUNC5( to-g_entities, FUNC6("print \"User %s is not on the server\n\"", s));
	return -1;
}