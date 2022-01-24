#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  searchpath_t ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  len ;
typedef  scalar_t__ fileHandle_t ;
typedef  long byte ;
struct TYPE_2__ {int integer; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  ERR_FATAL ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 long FUNC3 (char const*,scalar_t__*,scalar_t__) ; 
 long FUNC4 (char const*,int /*<<< orphan*/ *,scalar_t__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int FUNC6 (long*,long,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (long*,long,scalar_t__) ; 
 long* FUNC8 (long) ; 
 TYPE_1__* com_journal ; 
 scalar_t__ com_journalDataFile ; 
 int /*<<< orphan*/  fs_loadCount ; 
 int /*<<< orphan*/  fs_loadStack ; 
 int /*<<< orphan*/  fs_searchpaths ; 
 scalar_t__ qfalse ; 
 scalar_t__ qtrue ; 
 scalar_t__ FUNC9 (char const*,char*) ; 

long FUNC10(const char *qpath, void *searchPath, qboolean unpure, void **buffer)
{
	fileHandle_t	h;
	searchpath_t	*search;
	byte*			buf;
	qboolean		isConfig;
	long				len;

	if ( !fs_searchpaths ) {
		FUNC1( ERR_FATAL, "Filesystem call made without initialization" );
	}

	if ( !qpath || !qpath[0] ) {
		FUNC1( ERR_FATAL, "FS_ReadFile with empty name" );
	}

	buf = NULL;	// quiet compiler warning

	// if this is a .cfg file and we are playing back a journal, read
	// it from the journal file
	if ( FUNC9( qpath, ".cfg" ) ) {
		isConfig = qtrue;
		if ( com_journal && com_journal->integer == 2 ) {
			int		r;

			FUNC0( "Loading %s from journal file.\n", qpath );
			r = FUNC6( &len, sizeof( len ), com_journalDataFile );
			if ( r != sizeof( len ) ) {
				if (buffer != NULL) *buffer = NULL;
				return -1;
			}
			// if the file didn't exist when the journal was created
			if (!len) {
				if (buffer == NULL) {
					return 1;			// hack for old journal files
				}
				*buffer = NULL;
				return -1;
			}
			if (buffer == NULL) {
				return len;
			}

			buf = FUNC8(len+1);
			*buffer = buf;

			r = FUNC6( buf, len, com_journalDataFile );
			if ( r != len ) {
				FUNC1( ERR_FATAL, "Read from journalDataFile failed" );
			}

			fs_loadCount++;
			fs_loadStack++;

			// guarantee that it will have a trailing 0 for string operations
			buf[len] = 0;

			return len;
		}
	} else {
		isConfig = qfalse;
	}

	search = searchPath;

	if(search == NULL)
	{
		// look for it in the filesystem or pack files
		len = FUNC3(qpath, &h, qfalse);
	}
	else
	{
		// look for it in a specific search path only
		len = FUNC4(qpath, search, &h, qfalse, unpure);
	}

	if ( h == 0 ) {
		if ( buffer ) {
			*buffer = NULL;
		}
		// if we are journalling and it is a config file, write a zero to the journal file
		if ( isConfig && com_journal && com_journal->integer == 1 ) {
			FUNC0( "Writing zero for %s to journal file.\n", qpath );
			len = 0;
			FUNC7( &len, sizeof( len ), com_journalDataFile );
			FUNC5( com_journalDataFile );
		}
		return -1;
	}

	if ( !buffer ) {
		if ( isConfig && com_journal && com_journal->integer == 1 ) {
			FUNC0( "Writing len for %s to journal file.\n", qpath );
			FUNC7( &len, sizeof( len ), com_journalDataFile );
			FUNC5( com_journalDataFile );
		}
		FUNC2( h);
		return len;
	}

	fs_loadCount++;
	fs_loadStack++;

	buf = FUNC8(len+1);
	*buffer = buf;

	FUNC6 (buf, len, h);

	// guarantee that it will have a trailing 0 for string operations
	buf[len] = 0;
	FUNC2( h );

	// if we are journalling and it is a config file, write it to the journal file
	if ( isConfig && com_journal && com_journal->integer == 1 ) {
		FUNC0( "Writing %s to journal file.\n", qpath );
		FUNC7( &len, sizeof( len ), com_journalDataFile );
		FUNC7( buf, len, com_journalDataFile );
		FUNC5( com_journalDataFile );
	}
	return len;
}