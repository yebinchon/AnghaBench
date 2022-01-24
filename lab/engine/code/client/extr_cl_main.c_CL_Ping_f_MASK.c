#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  adr; scalar_t__ time; int /*<<< orphan*/  start; } ;
typedef  TYPE_1__ ping_t ;
typedef  int /*<<< orphan*/  netadrtype_t ;
typedef  int /*<<< orphan*/  netadr_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC2 () ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  NA_IP ; 
 int /*<<< orphan*/  NA_IP6 ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 

void FUNC11( void ) {
	netadr_t	to;
	ping_t*		pingptr;
	char*		server;
	int			argc;
	netadrtype_t	family = NA_UNSPEC;

	argc = FUNC2();

	if ( argc != 2 && argc != 3 ) {
		FUNC5( "usage: ping [-4|-6] server\n");
		return;	
	}
	
	if(argc == 2)
		server = FUNC3(1);
	else
	{
		if(!FUNC10(FUNC3(1), "-4"))
			family = NA_IP;
		else if(!FUNC10(FUNC3(1), "-6"))
			family = NA_IP6;
		else
			FUNC5( "warning: only -4 or -6 as address type understood.\n");
		
		server = FUNC3(2);
	}

	FUNC4( &to, 0, sizeof(netadr_t) );

	if ( !FUNC7( server, &to, family ) ) {
		return;
	}

	pingptr = FUNC0();

	FUNC9( &pingptr->adr, &to, sizeof (netadr_t) );
	pingptr->start = FUNC8();
	pingptr->time  = 0;

	FUNC1(pingptr->adr, NULL, 0);
		
	FUNC6( NS_CLIENT, to, "getinfo xxx" );
}