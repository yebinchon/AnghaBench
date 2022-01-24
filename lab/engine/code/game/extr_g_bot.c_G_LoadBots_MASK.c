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
struct TYPE_3__ {char* string; } ;
typedef  TYPE_1__ vmCvar_t ;

/* Variables and functions */
 int CVAR_INIT ; 
 int CVAR_ROM ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ g_numBots ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC9( void ) {
	vmCvar_t	botsFile;
	int			numdirs;
	char		filename[128];
	char		dirlist[1024];
	char*		dirptr;
	int			i;
	int			dirlen;

	if ( !FUNC5( "bot_enable" ) ) {
		return;
	}

	g_numBots = 0;

	FUNC4( &botsFile, "g_botsFile", "", CVAR_INIT|CVAR_ROM );
	if( *botsFile.string ) {
		FUNC0(botsFile.string);
	}
	else {
		FUNC0("scripts/bots.txt");
	}

	// get all bots from .bot files
	numdirs = FUNC6("scripts", ".bot", dirlist, 1024 );
	dirptr  = dirlist;
	for (i = 0; i < numdirs; i++, dirptr += dirlen+1) {
		dirlen = FUNC3(dirptr);
		FUNC2(filename, "scripts/");
		FUNC1(filename, dirptr);
		FUNC0(filename);
	}
	FUNC7( FUNC8( "%i bots parsed\n", g_numBots ) );
}