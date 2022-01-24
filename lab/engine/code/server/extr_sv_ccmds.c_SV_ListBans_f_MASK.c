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
struct TYPE_4__ {int /*<<< orphan*/  subnet; int /*<<< orphan*/  ip; scalar_t__ isexception; } ;
typedef  TYPE_1__ serverBan_t ;
struct TYPE_5__ {int /*<<< orphan*/  integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* com_sv_running ; 
 TYPE_1__* serverBans ; 
 int serverBansCount ; 

__attribute__((used)) static void FUNC2(void)
{
	int index, count;
	serverBan_t *ban;

	// make sure server is running
	if ( !com_sv_running->integer ) {
		FUNC0( "Server is not running.\n" );
		return;
	}
	
	// List all bans
	for(index = count = 0; index < serverBansCount; index++)
	{
		ban = &serverBans[index];
		if(!ban->isexception)
		{
			count++;

			FUNC0("Ban #%d: %s/%d\n", count,
				    FUNC1(ban->ip), ban->subnet);
		}
	}
	// List all exceptions
	for(index = count = 0; index < serverBansCount; index++)
	{
		ban = &serverBans[index];
		if(ban->isexception)
		{
			count++;

			FUNC0("Except #%d: %s/%d\n", count,
				    FUNC1(ban->ip), ban->subnet);
		}
	}
}