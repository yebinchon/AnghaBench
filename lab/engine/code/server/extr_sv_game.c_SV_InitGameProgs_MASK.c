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
struct TYPE_3__ {int integer; } ;
typedef  TYPE_1__ cvar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CVAR_LATCH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 TYPE_1__* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  SV_GameSystemCalls ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  gvm ; 
 int /*<<< orphan*/  qfalse ; 

void FUNC5( void ) {
	cvar_t	*var;
	//FIXME these are temp while I make bots run in vm
	extern int	bot_enable;

	var = FUNC1( "bot_enable", "1", CVAR_LATCH );
	if ( var ) {
		bot_enable = var->integer;
	}
	else {
		bot_enable = 0;
	}

	// load the dll or bytecode
	gvm = FUNC4( "qagame", SV_GameSystemCalls, FUNC2( "vm_game" ) );
	if ( !gvm ) {
		FUNC0( ERR_FATAL, "VM_Create on game failed" );
	}

	FUNC3( qfalse );
}