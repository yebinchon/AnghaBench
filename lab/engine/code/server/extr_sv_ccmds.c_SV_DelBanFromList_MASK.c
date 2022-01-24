#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ isexception; int subnet; int /*<<< orphan*/  ip; } ;
typedef  TYPE_1__ serverBan_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  netadr_t ;
struct TYPE_5__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int FUNC0 () ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int*,char*) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int FUNC8 (char*) ; 
 TYPE_3__* com_sv_running ; 
 TYPE_1__* serverBans ; 
 int serverBansCount ; 
 scalar_t__ FUNC9 (char*,char) ; 

__attribute__((used)) static void FUNC10(qboolean isexception)
{
	int index, count = 0, todel, mask;
	netadr_t ip;
	char *banstring;
	
	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC2( "Server is not running.\n" );
		return;
	}
	
	if(FUNC0() != 2)
	{
		FUNC2 ("Usage: %s (ip[/subnet] | num)\n", FUNC1(0));
		return;
	}

	banstring = FUNC1(1);
	
	if(FUNC9(banstring, '.') || FUNC9(banstring, ':'))
	{
		serverBan_t *curban;
		
		if(FUNC6(&ip, &mask, banstring))
		{
			FUNC2("Error: Invalid address %s\n", banstring);
			return;
		}
		
		index = 0;
		
		while(index < serverBansCount)
		{
			curban = &serverBans[index];
			
			if(curban->isexception == isexception		&&
			   curban->subnet >= mask 			&&
			   FUNC4(curban->ip, ip, mask))
			{
				FUNC2("Deleting %s %s/%d\n",
					   isexception ? "exception" : "ban",
					   FUNC3(curban->ip), curban->subnet);
					   
				FUNC5(index);
			}
			else
				index++;
		}
	}
	else
	{
		todel = FUNC8(FUNC1(1));

		if(todel < 1 || todel > serverBansCount)
		{
			FUNC2("Error: Invalid ban number given\n");
			return;
		}
	
		for(index = 0; index < serverBansCount; index++)
		{
			if(serverBans[index].isexception == isexception)
			{
				count++;
			
				if(count == todel)
				{
					FUNC2("Deleting %s %s/%d\n",
					   isexception ? "exception" : "ban",
					   FUNC3(serverBans[index].ip), serverBans[index].subnet);

					FUNC5(index);

					break;
				}
			}
		}
	}
	
	FUNC7();
}