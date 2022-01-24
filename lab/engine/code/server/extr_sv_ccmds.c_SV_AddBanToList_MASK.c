#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_6__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ type; } ;
struct TYPE_14__ {int subnet; scalar_t__ isexception; TYPE_3__ ip; } ;
typedef  TYPE_2__ serverBan_t ;
typedef  scalar_t__ qboolean ;
typedef  TYPE_3__ netadr_t ;
struct TYPE_13__ {TYPE_3__ remoteAddress; } ;
struct TYPE_16__ {TYPE_1__ netchan; } ;
typedef  TYPE_4__ client_t ;
typedef  int /*<<< orphan*/  addy2 ;
struct TYPE_17__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 int FUNC1 () ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 scalar_t__ NA_IP ; 
 scalar_t__ NA_IP6 ; 
 int NET_ADDRSTRMAXLEN ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__) ; 
 scalar_t__ FUNC5 (TYPE_3__,TYPE_3__,int) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 TYPE_4__* FUNC8 () ; 
 scalar_t__ FUNC9 (TYPE_3__*,int*,char*) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int FUNC11 (char*) ; 
 TYPE_6__* com_sv_running ; 
 TYPE_2__* serverBans ; 
 int serverBansCount ; 
 scalar_t__ FUNC12 (char*,char) ; 

__attribute__((used)) static void FUNC13(qboolean isexception)
{
	char *banstring;
	char addy2[NET_ADDRSTRMAXLEN];
	netadr_t ip;
	int index, argc, mask;
	serverBan_t *curban;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC3( "Server is not running.\n" );
		return;
	}

	argc = FUNC1();
	
	if(argc < 2 || argc > 3)
	{
		FUNC3 ("Usage: %s (ip[/subnet] | clientnum [subnet])\n", FUNC2(0));
		return;
	}

	if(serverBansCount >= FUNC0(serverBans))
	{
		FUNC3 ("Error: Maximum number of bans/exceptions exceeded.\n");
		return;
	}

	banstring = FUNC2(1);
	
	if(FUNC12(banstring, '.') || FUNC12(banstring, ':'))
	{
		// This is an ip address, not a client num.
		
		if(FUNC9(&ip, &mask, banstring))
		{
			FUNC3("Error: Invalid address %s\n", banstring);
			return;
		}
	}
	else
	{
		client_t *cl;
		
		// client num.
		
		cl = FUNC8();

		if(!cl)
		{
			FUNC3("Error: Playernum %s does not exist.\n", FUNC2(1));
			return;
		}
		
		ip = cl->netchan.remoteAddress;
		
		if(argc == 3)
		{
			mask = FUNC11(FUNC2(2));
			
			if(ip.type == NA_IP)
			{
				if(mask < 1 || mask > 32)
					mask = 32;
			}
			else
			{
				if(mask < 1 || mask > 128)
					mask = 128;
			}
		}
		else
			mask = (ip.type == NA_IP6) ? 128 : 32;
	}

	if(ip.type != NA_IP && ip.type != NA_IP6)
	{
		FUNC3("Error: Can ban players connected via the internet only.\n");
		return;
	}

	// first check whether a conflicting ban exists that would supersede the new one.
	for(index = 0; index < serverBansCount; index++)
	{
		curban = &serverBans[index];
		
		if(curban->subnet <= mask)
		{
			if((curban->isexception || !isexception) && FUNC5(curban->ip, ip, curban->subnet))
			{
				FUNC6(addy2, FUNC4(ip), sizeof(addy2));
				
				FUNC3("Error: %s %s/%d supersedes %s %s/%d\n", curban->isexception ? "Exception" : "Ban",
					   FUNC4(curban->ip), curban->subnet,
					   isexception ? "exception" : "ban", addy2, mask);
				return;
			}
		}
		if(curban->subnet >= mask)
		{
			if(!curban->isexception && isexception && FUNC5(curban->ip, ip, mask))
			{
				FUNC6(addy2, FUNC4(curban->ip), sizeof(addy2));
			
				FUNC3("Error: %s %s/%d supersedes already existing %s %s/%d\n", isexception ? "Exception" : "Ban",
					   FUNC4(ip), mask,
					   curban->isexception ? "exception" : "ban", addy2, curban->subnet);
				return;
			}
		}
	}

	// now delete bans that are superseded by the new one
	index = 0;
	while(index < serverBansCount)
	{
		curban = &serverBans[index];
		
		if(curban->subnet > mask && (!curban->isexception || isexception) && FUNC5(curban->ip, ip, mask))
			FUNC7(index);
		else
			index++;
	}

	serverBans[serverBansCount].ip = ip;
	serverBans[serverBansCount].subnet = mask;
	serverBans[serverBansCount].isexception = isexception;
	
	serverBansCount++;
	
	FUNC10();

	FUNC3("Added %s: %s/%d\n", isexception ? "ban exception" : "ban",
		   FUNC4(ip), mask);
}