#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_9__ ;
typedef  struct TYPE_17__   TYPE_8__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_18__ {int /*<<< orphan*/  integer; } ;
struct TYPE_17__ {char* string; } ;
struct TYPE_16__ {char const* string; } ;
struct TYPE_15__ {char* string; } ;
struct TYPE_14__ {char const* string; int /*<<< orphan*/  modified; } ;
struct TYPE_13__ {char* string; } ;
struct TYPE_12__ {char* string; } ;
struct TYPE_11__ {char* string; } ;
struct TYPE_10__ {char* string; } ;

/* Variables and functions */
 int /*<<< orphan*/  BASEGAME ; 
 int CVAR_INIT ; 
 int CVAR_PROTECTED ; 
 int CVAR_SYSTEMINFO ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 void* FUNC6 (char*,char const*,int) ; 
 int /*<<< orphan*/  ERR_DROP ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (char const*,char const*) ; 
 scalar_t__ FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (char const*,char const*) ; 
 char* FUNC18 () ; 
 char* FUNC19 () ; 
 char* FUNC20 () ; 
 int /*<<< orphan*/ * FUNC21 (char*,char*) ; 
 char* FUNC22 () ; 
 char* FUNC23 () ; 
 TYPE_9__* com_standalone ; 
 TYPE_8__* fs_apppath ; 
 TYPE_7__* fs_basegame ; 
 TYPE_6__* fs_basepath ; 
 void* fs_debug ; 
 TYPE_5__* fs_gamedirvar ; 
 TYPE_4__* fs_gogpath ; 
 TYPE_3__* fs_homepath ; 
 scalar_t__ fs_packFiles ; 
 TYPE_2__* fs_steampath ; 
 TYPE_1__* fs_temporarypath ; 
 int /*<<< orphan*/ * missingFiles ; 
 int /*<<< orphan*/  qfalse ; 

__attribute__((used)) static void FUNC24( const char *gameName )
{
	const char *homePath;

	FUNC3( "----- FS_Startup -----\n" );

	fs_packFiles = 0;

	fs_debug = FUNC6( "fs_debug", "0", 0 );
	fs_basepath = FUNC6 ("fs_basepath", FUNC20(), CVAR_INIT|CVAR_PROTECTED );
	fs_basegame = FUNC6 ("fs_basegame", "", CVAR_INIT );
	homePath = FUNC19();
	if (!homePath || !homePath[0]) {
		homePath = fs_basepath->string;
	}
	fs_homepath = FUNC6 ("fs_homepath", homePath, CVAR_INIT|CVAR_PROTECTED );
	fs_gamedirvar = FUNC6 ("fs_game", "", CVAR_INIT|CVAR_SYSTEMINFO );

	if (!gameName[0]) {
		FUNC5( "com_basegame" );
	}

	if (!FUNC10(fs_gamedirvar->string, gameName)) {
		// This is the standard base game. Servers and clients should
		// use "" and not the standard basegame name because this messes
		// up pak file negotiation and lots of other stuff
		FUNC5( "fs_game" );
	}

	if (FUNC11(gameName)) {
		FUNC2( ERR_DROP, "Invalid com_basegame '%s'", gameName );
	}
	if (FUNC11(fs_basegame->string)) {
		FUNC2( ERR_DROP, "Invalid fs_basegame '%s'", fs_basegame->string );
	}
	if (FUNC11(fs_gamedirvar->string)) {
		FUNC2( ERR_DROP, "Invalid fs_game '%s'", fs_gamedirvar->string );
	}

	// add search path elements in reverse priority order
	fs_gogpath = FUNC6 ("fs_gogpath", FUNC22(), CVAR_INIT|CVAR_PROTECTED );
	if (fs_gogpath->string[0]) {
		FUNC7( fs_gogpath->string, gameName );
	}
	fs_temporarypath = FUNC6 ("fs_temporarypath", fs_homepath->string, CVAR_INIT|CVAR_PROTECTED );
	if (fs_temporarypath->string[0]) {
		FUNC7( fs_temporarypath->string, gameName );
	}

	// add search path elements in reverse priority order
	fs_steampath = FUNC6 ("fs_steampath", FUNC23(), CVAR_INIT|CVAR_PROTECTED );
	if (fs_steampath->string[0]) {
		FUNC7( fs_steampath->string, gameName );
	}
	if (fs_basepath->string[0]) {
		FUNC7( fs_basepath->string, gameName );
	}
	// fs_homepath is somewhat particular to *nix systems, only add if relevant

#ifdef __APPLE__
	fs_apppath = Cvar_Get ("fs_apppath", Sys_DefaultAppPath(), CVAR_INIT|CVAR_PROTECTED );
	// Make MacOSX also include the base path included with the .app bundle
	if (fs_apppath->string[0])
		FS_AddGameDirectory(fs_apppath->string, gameName);
#endif

	// NOTE: same filtering below for mods and basegame
	if (fs_homepath->string[0] && FUNC17(fs_homepath->string,fs_basepath->string)) {
		FUNC8 ( fs_homepath->string );
		FUNC7 ( fs_homepath->string, gameName );
	}

	// check for additional base game so mods can be based upon other mods
	if ( fs_basegame->string[0] && FUNC17( fs_basegame->string, gameName ) ) {
		if (fs_gogpath->string[0]) {
			FUNC7(fs_gogpath->string, fs_basegame->string);
		}
		if (fs_steampath->string[0]) {
			FUNC7(fs_steampath->string, fs_basegame->string);
		}
		if (fs_basepath->string[0]) {
			FUNC7(fs_basepath->string, fs_basegame->string);
		}
		if (fs_homepath->string[0] && FUNC17(fs_homepath->string,fs_basepath->string)) {
			FUNC7(fs_homepath->string, fs_basegame->string);
		}
	}

	// check for additional game folder for mods
	if ( fs_gamedirvar->string[0] && FUNC17( fs_gamedirvar->string, gameName ) ) {
		if (fs_gogpath->string[0]) {
			FUNC7(fs_gogpath->string, fs_gamedirvar->string);
		}
		if (fs_steampath->string[0]) {
			FUNC7(fs_steampath->string, fs_gamedirvar->string);
		}
		if (fs_basepath->string[0]) {
			FUNC7(fs_basepath->string, fs_gamedirvar->string);
		}
		if (fs_homepath->string[0] && FUNC17(fs_homepath->string,fs_basepath->string)) {
			FUNC7(fs_homepath->string, fs_gamedirvar->string);
		}
	}

#ifndef STANDALONE
	if (!com_standalone->integer) {
		FUNC4(BASEGAME);
		if (fs_gamedirvar->string[0]) {
			FUNC1(fs_gamedirvar->string);
		}
	}
#endif

	// add our commands
	FUNC0 ("path", FS_Path_f);
	FUNC0 ("dir", FS_Dir_f );
	FUNC0 ("fdir", FS_NewDir_f );
	FUNC0 ("touchFile", FS_TouchFile_f );
	FUNC0 ("which", FS_Which_f );

	// https://zerowing.idsoftware.com/bugzilla/show_bug.cgi?id=506
	// reorder the pure pk3 files according to server order
	FUNC14();

	// print the current search paths
	FUNC13();

	fs_gamedirvar->modified = qfalse; // We just loaded, it's not modified

	FUNC3( "----------------------\n" );

#ifdef FS_MISSING
	if (missingFiles == NULL) {
		missingFiles = Sys_FOpen( "\\missing.txt", "ab" );
	}
#endif
	FUNC3( "%d files in pk3 files\n", fs_packFiles );
}