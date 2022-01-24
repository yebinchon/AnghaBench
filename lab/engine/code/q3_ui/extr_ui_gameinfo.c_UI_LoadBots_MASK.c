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
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,char*,int) ; 
 int FUNC5 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ ui_numBots ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__) ; 

__attribute__((used)) static void FUNC8( void ) {
	vmCvar_t	botsFile;
	int			numdirs;
	char		filename[128];
	char		dirlist[1024];
	char*		dirptr;
	int			i;
	int			dirlen;

	ui_numBots = 0;

	FUNC4( &botsFile, "g_botsFile", "", CVAR_INIT|CVAR_ROM );
	if( *botsFile.string ) {
		FUNC0(botsFile.string);
	}
	else {
		FUNC0("scripts/bots.txt");
	}

	// get all bots from .bot files
	numdirs = FUNC5("scripts", ".bot", dirlist, 1024 );
	dirptr  = dirlist;
	for (i = 0; i < numdirs; i++, dirptr += dirlen+1) {
		dirlen = FUNC3(dirptr);
		FUNC2(filename, "scripts/");
		FUNC1(filename, dirptr);
		FUNC0(filename);
	}
	FUNC6( FUNC7( "%i bots parsed\n", ui_numBots ) );
}