#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_7__ ;
typedef  struct TYPE_14__   TYPE_6__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/ * persistant; } ;
typedef  TYPE_2__ playerState_t ;
struct TYPE_9__ {int /*<<< orphan*/  remoteAddress; } ;
struct TYPE_11__ {scalar_t__ state; int ping; int /*<<< orphan*/  rate; TYPE_1__ netchan; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ client_t ;
struct TYPE_15__ {int /*<<< orphan*/  integer; } ;
struct TYPE_14__ {int /*<<< orphan*/  string; } ;
struct TYPE_13__ {int integer; } ;
struct TYPE_12__ {TYPE_3__* clients; } ;

/* Variables and functions */
 scalar_t__ CS_CONNECTED ; 
 scalar_t__ CS_ZOMBIE ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 size_t PERS_SCORE ; 
 TYPE_2__* FUNC2 (int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 TYPE_7__* com_sv_running ; 
 int FUNC4 (char const*) ; 
 TYPE_6__* sv_mapname ; 
 TYPE_5__* sv_maxclients ; 
 TYPE_4__ svs ; 

__attribute__((used)) static void FUNC5( void ) {
	int			i, j, l;
	client_t	*cl;
	playerState_t	*ps;
	const char		*s;
	int			ping;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC0( "Server is not running.\n" );
		return;
	}

	FUNC0 ("map: %s\n", sv_mapname->string );

	FUNC0 ("cl score ping name            address                                 rate \n");
	FUNC0 ("-- ----- ---- --------------- --------------------------------------- -----\n");
	for (i=0,cl=svs.clients ; i < sv_maxclients->integer ; i++,cl++)
	{
		if (!cl->state)
			continue;
		FUNC0 ("%2i ", i);
		ps = FUNC2( i );
		FUNC0 ("%5i ", ps->persistant[PERS_SCORE]);

		if (cl->state == CS_CONNECTED)
			FUNC0 ("CON ");
		else if (cl->state == CS_ZOMBIE)
			FUNC0 ("ZMB ");
		else
		{
			ping = cl->ping < 9999 ? cl->ping : 9999;
			FUNC0 ("%4i ", ping);
		}

		FUNC0 ("%s", cl->name);
		
		l = 16 - FUNC3(cl->name);
		j = 0;
		
		do
		{
			FUNC0 (" ");
			j++;
		} while(j < l);


		// TTimo adding a ^7 to reset the color
		s = FUNC1( cl->netchan.remoteAddress );
		FUNC0 ("^7%s", s);
		l = 39 - FUNC4(s);
		j = 0;
		
		do
		{
			FUNC0(" ");
			j++;
		} while(j < l);
		
		FUNC0 (" %5i", cl->rate);

		FUNC0 ("\n");
	}
	FUNC0 ("\n");
}