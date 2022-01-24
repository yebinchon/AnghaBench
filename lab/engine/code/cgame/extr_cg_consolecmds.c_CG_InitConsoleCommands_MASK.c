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
struct TYPE_3__ {char* cmd; } ;

/* Variables and functions */
 int FUNC0 (TYPE_1__*) ; 
 TYPE_1__* commands ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

void FUNC2( void ) {
	int		i;

	for ( i = 0 ; i < FUNC0( commands ) ; i++ ) {
		FUNC1( commands[i].cmd );
	}

	//
	// the game server will interpret these commands, which will be automatically
	// forwarded to the server after they are not recognized locally
	//
	FUNC1 ("kill");
	FUNC1 ("say");
	FUNC1 ("say_team");
	FUNC1 ("tell");
#ifdef MISSIONPACK
	trap_AddCommand ("vsay");
	trap_AddCommand ("vsay_team");
	trap_AddCommand ("vtell");
	trap_AddCommand ("vtaunt");
	trap_AddCommand ("vosay");
	trap_AddCommand ("vosay_team");
	trap_AddCommand ("votell");
#endif
	FUNC1 ("give");
	FUNC1 ("god");
	FUNC1 ("notarget");
	FUNC1 ("noclip");
	FUNC1 ("where");
	FUNC1 ("team");
	FUNC1 ("follow");
	FUNC1 ("follownext");
	FUNC1 ("followprev");
	FUNC1 ("levelshot");
	FUNC1 ("addbot");
	FUNC1 ("setviewpos");
	FUNC1 ("callvote");
	FUNC1 ("vote");
	FUNC1 ("callteamvote");
	FUNC1 ("teamvote");
	FUNC1 ("stats");
	FUNC1 ("teamtask");
	FUNC1 ("loaddefered");	// spelled wrong, but not changing for demo
}