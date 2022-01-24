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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * g_arenaInfos ; 
 int g_numArenas ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char*,char*,int) ; 
 int FUNC6 (char*,char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*,int) ; 

__attribute__((used)) static void FUNC9( void ) {
	int			numdirs;
	vmCvar_t	arenasFile;
	char		filename[128];
	char		dirlist[1024];
	char*		dirptr;
	int			i, n;
	int			dirlen;

	g_numArenas = 0;

	FUNC5( &arenasFile, "g_arenasFile", "", CVAR_INIT|CVAR_ROM );
	if( *arenasFile.string ) {
		FUNC0(arenasFile.string);
	}
	else {
		FUNC0("scripts/arenas.txt");
	}

	// get all arenas from .arena files
	numdirs = FUNC6("scripts", ".arena", dirlist, 1024 );
	dirptr  = dirlist;
	for (i = 0; i < numdirs; i++, dirptr += dirlen+1) {
		dirlen = FUNC4(dirptr);
		FUNC3(filename, "scripts/");
		FUNC2(filename, dirptr);
		FUNC0(filename);
	}
	FUNC7( FUNC8( "%i arenas parsed\n", g_numArenas ) );
	
	for( n = 0; n < g_numArenas; n++ ) {
		FUNC1( g_arenaInfos[n], "num", FUNC8( "%i", n ) );
	}
}