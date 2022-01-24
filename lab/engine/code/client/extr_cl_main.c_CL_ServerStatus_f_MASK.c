#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* pending; void* print; int /*<<< orphan*/  address; } ;
typedef  TYPE_1__ serverStatus_t ;
typedef  int /*<<< orphan*/  netadrtype_t ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_5__ {scalar_t__ state; int /*<<< orphan*/  serverAddress; scalar_t__ demoplaying; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  NA_IP ; 
 int /*<<< orphan*/  NA_IP6 ; 
 int /*<<< orphan*/  NA_UNSPEC ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NS_CLIENT ; 
 TYPE_2__ clc ; 
 void* qtrue ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 

void FUNC8(void) {
	netadr_t	to, *toptr = NULL;
	char		*server;
	serverStatus_t *serverStatus;
	int			argc;
	netadrtype_t	family = NA_UNSPEC;

	argc = FUNC1();

	if ( argc != 2 && argc != 3 )
	{
		if (clc.state != CA_ACTIVE || clc.demoplaying)
		{
			FUNC4 ("Not connected to a server.\n");
			FUNC4( "usage: serverstatus [-4|-6] server\n");
			return;
		}

		toptr = &clc.serverAddress;
	}
	
	if(!toptr)
	{
		FUNC3( &to, 0, sizeof(netadr_t) );
	
		if(argc == 2)
			server = FUNC2(1);
		else
		{
			if(!FUNC7(FUNC2(1), "-4"))
				family = NA_IP;
			else if(!FUNC7(FUNC2(1), "-6"))
				family = NA_IP6;
			else
				FUNC4( "warning: only -4 or -6 as address type understood.\n");
		
			server = FUNC2(2);
		}

		toptr = &to;
		if ( !FUNC6( server, toptr, family ) )
			return;
	}

	FUNC5( NS_CLIENT, *toptr, "getstatus" );

	serverStatus = FUNC0( *toptr );
	serverStatus->address = *toptr;
	serverStatus->print = qtrue;
	serverStatus->pending = qtrue;
}