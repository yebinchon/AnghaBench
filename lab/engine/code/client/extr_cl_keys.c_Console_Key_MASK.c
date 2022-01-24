#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  temp ;
struct TYPE_12__ {scalar_t__ state; } ;
struct TYPE_11__ {scalar_t__ integer; } ;
struct TYPE_10__ {char* buffer; void* widthInChars; int /*<<< orphan*/  cursor; } ;
struct TYPE_9__ {scalar_t__ down; } ;

/* Variables and functions */
 scalar_t__ CA_ACTIVE ; 
 scalar_t__ CA_DISCONNECTED ; 
 int /*<<< orphan*/  FUNC0 () ; 
 size_t COMMAND_HISTORY ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,int,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int) ; 
 size_t K_CTRL ; 
 int K_DOWNARROW ; 
 int K_END ; 
 int K_ENTER ; 
 int K_HOME ; 
 int K_KP_DOWNARROW ; 
 int K_KP_ENTER ; 
 int K_KP_UPARROW ; 
 int K_MWHEELDOWN ; 
 int K_MWHEELUP ; 
 int K_PGDN ; 
 int K_PGUP ; 
 size_t K_SHIFT ; 
 int K_TAB ; 
 int K_UPARROW ; 
 int /*<<< orphan*/  MAX_EDIT_LINE ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 TYPE_5__ clc ; 
 TYPE_4__* con_autochat ; 
 TYPE_2__ g_consoleField ; 
 void* g_console_field_width ; 
 TYPE_2__* historyEditLines ; 
 size_t historyLine ; 
 TYPE_1__* keys ; 
 size_t nextHistoryLine ; 
 char FUNC13 (int) ; 

void FUNC14 (int key) {
	// ctrl-L clears screen
	if ( key == 'l' && keys[K_CTRL].down ) {
		FUNC1 ("clear\n");
		return;
	}

	// enter finishes the line
	if ( key == K_ENTER || key == K_KP_ENTER ) {
		// if not in the game explicitly prepend a slash if needed
		if ( clc.state != CA_ACTIVE && con_autochat->integer &&
				g_consoleField.buffer[0] &&
				g_consoleField.buffer[0] != '\\' &&
				g_consoleField.buffer[0] != '/' ) {
			char	temp[MAX_EDIT_LINE-1];

			FUNC11( temp, g_consoleField.buffer, sizeof( temp ) );
			FUNC3( g_consoleField.buffer, sizeof( g_consoleField.buffer ), "\\%s", temp );
			g_consoleField.cursor++;
		}

		FUNC2 ( "]%s\n", g_consoleField.buffer );

		// leading slash is an explicit command
		if ( g_consoleField.buffer[0] == '\\' || g_consoleField.buffer[0] == '/' ) {
			FUNC1( g_consoleField.buffer+1 );	// valid command
			FUNC1 ("\n");
		} else {
			// other text will be chat messages
			if ( !g_consoleField.buffer[0] ) {
				return;	// empty lines just scroll the console without adding to history
			} else {
				if ( con_autochat->integer ) {
					FUNC1 ("cmd say ");
				}

				FUNC1( g_consoleField.buffer );
				FUNC1 ("\n");
			}
		}

		// copy line to history buffer
		historyEditLines[nextHistoryLine % COMMAND_HISTORY] = g_consoleField;
		nextHistoryLine++;
		historyLine = nextHistoryLine;

		FUNC9( &g_consoleField );

		g_consoleField.widthInChars = g_console_field_width;

		FUNC0( );

		if ( clc.state == CA_DISCONNECTED ) {
			FUNC12 ();	// force an update, because the command
		}							// may take some time
		return;
	}

	// command completion

	if (key == K_TAB) {
		FUNC8(&g_consoleField);
		return;
	}

	// command history (ctrl-p ctrl-n for unix style)

	if ( (key == K_MWHEELUP && keys[K_SHIFT].down) || ( key == K_UPARROW ) || ( key == K_KP_UPARROW ) ||
		 ( ( FUNC13(key) == 'p' ) && keys[K_CTRL].down ) ) {
		if ( nextHistoryLine - historyLine < COMMAND_HISTORY 
			&& historyLine > 0 ) {
			historyLine--;
		}
		g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
		return;
	}

	if ( (key == K_MWHEELDOWN && keys[K_SHIFT].down) || ( key == K_DOWNARROW ) || ( key == K_KP_DOWNARROW ) ||
		 ( ( FUNC13(key) == 'n' ) && keys[K_CTRL].down ) ) {
		historyLine++;
		if (historyLine >= nextHistoryLine) {
			historyLine = nextHistoryLine;
			FUNC9( &g_consoleField );
			g_consoleField.widthInChars = g_console_field_width;
			return;
		}
		g_consoleField = historyEditLines[ historyLine % COMMAND_HISTORY ];
		return;
	}

	// console scrolling
	if ( key == K_PGUP ) {
		FUNC6();
		return;
	}

	if ( key == K_PGDN) {
		FUNC5();
		return;
	}

	if ( key == K_MWHEELUP) {	//----(SA)	added some mousewheel functionality to the console
		FUNC6();
		if(keys[K_CTRL].down) {	// hold <ctrl> to accelerate scrolling
			FUNC6();
			FUNC6();
		}
		return;
	}

	if ( key == K_MWHEELDOWN) {	//----(SA)	added some mousewheel functionality to the console
		FUNC5();
		if(keys[K_CTRL].down) {	// hold <ctrl> to accelerate scrolling
			FUNC5();
			FUNC5();
		}
		return;
	}

	// ctrl-home = top of console
	if ( key == K_HOME && keys[K_CTRL].down ) {
		FUNC7();
		return;
	}

	// ctrl-end = bottom of console
	if ( key == K_END && keys[K_CTRL].down ) {
		FUNC4();
		return;
	}

	// pass to the normal editline routine
	FUNC10( &g_consoleField, key );
}