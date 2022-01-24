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
typedef  size_t fileHandle_t ;
struct TYPE_18__ {scalar_t__* string; } ;
struct TYPE_17__ {scalar_t__ integer; } ;
struct TYPE_16__ {scalar_t__* string; } ;
struct TYPE_15__ {scalar_t__* string; } ;
struct TYPE_14__ {scalar_t__* string; } ;
struct TYPE_13__ {scalar_t__* string; } ;
struct TYPE_10__ {void* o; } ;
struct TYPE_11__ {TYPE_1__ file; } ;
struct TYPE_12__ {TYPE_2__ handleFiles; void* handleSync; int /*<<< orphan*/  name; void* zipFile; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 char* FUNC2 (scalar_t__*,char const*,char*) ; 
 size_t FUNC3 () ; 
 long FUNC4 (size_t) ; 
 scalar_t__ FUNC5 (scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* FUNC8 (char*,char*) ; 
 TYPE_9__* fs_basepath ; 
 TYPE_8__* fs_debug ; 
 TYPE_7__* fs_gogpath ; 
 TYPE_6__* fs_homepath ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 TYPE_5__* fs_steampath ; 
 TYPE_4__* fs_temporarypath ; 
 TYPE_3__* fsh ; 
 void* qfalse ; 
 int FUNC9 (char*) ; 

long FUNC10(const char *filename, fileHandle_t *fp)
{
	char *ospath;
	fileHandle_t	f = 0;

	if ( !fs_searchpaths ) {
		FUNC0( ERR_FATAL, "Filesystem call made without initialization" );
	}

	f = FUNC3();
	fsh[f].zipFile = qfalse;

	FUNC6( fsh[f].name, filename, sizeof( fsh[f].name ) );

	// don't let sound stutter
	FUNC7();

	// search homepath
	ospath = FUNC2( fs_homepath->string, filename, "" );
	// remove trailing slash
	ospath[FUNC9(ospath)-1] = '\0';

	if ( fs_debug->integer ) {
		FUNC1( "FS_SV_FOpenFileRead (fs_homepath): %s\n", ospath );
	}

	fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
	fsh[f].handleSync = qfalse;
	if (!fsh[f].handleFiles.file.o)
	{
		// If fs_homepath == fs_basepath, don't bother
		if (FUNC5(fs_homepath->string,fs_basepath->string))
		{
			// search basepath
			ospath = FUNC2( fs_basepath->string, filename, "" );
			ospath[FUNC9(ospath)-1] = '\0';

			if ( fs_debug->integer )
			{
				FUNC1( "FS_SV_FOpenFileRead (fs_basepath): %s\n", ospath );
			}

			fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
			fsh[f].handleSync = qfalse;
		}

		// Check fs_temporarypath too
		if (!fsh[f].handleFiles.file.o && fs_temporarypath->string[0])
		{
			ospath = FUNC2( fs_temporarypath->string, filename, "" );
			ospath[FUNC9(ospath)-1] = '\0';

			if ( fs_debug->integer )
			{
				FUNC1( "FS_SV_FOpenFileRead (fs_temporarypath): %s\n", ospath );
			}

			fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
			fsh[f].handleSync = qfalse;
		}

		// Check fs_steampath too
		if (!fsh[f].handleFiles.file.o && fs_steampath->string[0])
		{
			ospath = FUNC2( fs_steampath->string, filename, "" );
			ospath[FUNC9(ospath)-1] = '\0';

			if ( fs_debug->integer )
			{
				FUNC1( "FS_SV_FOpenFileRead (fs_steampath): %s\n", ospath );
			}

			fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
			fsh[f].handleSync = qfalse;
		}

		// Check fs_gogpath
		if (!fsh[f].handleFiles.file.o && fs_gogpath->string[0])
		{
			ospath = FUNC2( fs_gogpath->string, filename, "" );
			ospath[FUNC9(ospath)-1] = '\0';

			if ( fs_debug->integer )
			{
				FUNC1( "FS_SV_FOpenFileRead (fs_gogpath): %s\n", ospath );
			}

			fsh[f].handleFiles.file.o = FUNC8( ospath, "rb" );
			fsh[f].handleSync = qfalse;
		}

		if ( !fsh[f].handleFiles.file.o )
		{
			f = 0;
		}
	}

	*fp = f;
	if (f) {
		return FUNC4(f);
	}

	return -1;
}