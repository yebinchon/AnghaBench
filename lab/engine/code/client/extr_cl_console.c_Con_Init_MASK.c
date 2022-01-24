#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {void* widthInChars; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int COMMAND_HISTORY ; 
 int /*<<< orphan*/  CVAR_ARCHIVE ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Cmd_CompleteTxtName ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Con_Clear_f ; 
 int /*<<< orphan*/  Con_Dump_f ; 
 int /*<<< orphan*/  Con_MessageMode2_f ; 
 int /*<<< orphan*/  Con_MessageMode3_f ; 
 int /*<<< orphan*/  Con_MessageMode4_f ; 
 int /*<<< orphan*/  Con_MessageMode_f ; 
 int /*<<< orphan*/  Con_ToggleConsole_f ; 
 int /*<<< orphan*/  Con_ToggleMenu_f ; 
 void* FUNC3 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 void* con_autoclear ; 
 void* con_conspeed ; 
 void* con_notifytime ; 
 TYPE_1__ g_consoleField ; 
 void* g_console_field_width ; 
 TYPE_1__* historyEditLines ; 

void FUNC5 (void) {
	int		i;

	con_notifytime = FUNC3 ("con_notifytime", "3", 0);
	con_conspeed = FUNC3 ("scr_conspeed", "3", 0);
	con_autoclear = FUNC3("con_autoclear", "1", CVAR_ARCHIVE);

	FUNC4( &g_consoleField );
	g_consoleField.widthInChars = g_console_field_width;
	for ( i = 0 ; i < COMMAND_HISTORY ; i++ ) {
		FUNC4( &historyEditLines[i] );
		historyEditLines[i].widthInChars = g_console_field_width;
	}
	FUNC0( );

	FUNC1 ("toggleconsole", Con_ToggleConsole_f);
	FUNC1 ("togglemenu", Con_ToggleMenu_f);
	FUNC1 ("messagemode", Con_MessageMode_f);
	FUNC1 ("messagemode2", Con_MessageMode2_f);
	FUNC1 ("messagemode3", Con_MessageMode3_f);
	FUNC1 ("messagemode4", Con_MessageMode4_f);
	FUNC1 ("clear", Con_Clear_f);
	FUNC1 ("condump", Con_Dump_f);
	FUNC2( "condump", Cmd_CompleteTxtName );
}