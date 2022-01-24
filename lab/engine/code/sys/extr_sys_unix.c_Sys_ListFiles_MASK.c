#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct stat {int st_mode; } ;
struct dirent {char const* d_name; } ;
typedef  int /*<<< orphan*/  search ;
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*) ; 
 char* FUNC1 (char const*) ; 
 int MAX_FOUND_FILES ; 
 int MAX_OSPATH ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char*,char**,int*) ; 
 char** FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (char const*) ; 
 scalar_t__ qtrue ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (char*,struct stat*) ; 
 int FUNC9 (char const*) ; 

char **FUNC10( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs )
{
	struct dirent *d;
	DIR           *fdir;
	qboolean      dironly = wantsubs;
	char          search[MAX_OSPATH];
	int           nfiles;
	char          **listCopy;
	char          *list[MAX_FOUND_FILES];
	int           i;
	struct stat   st;

	int           extLen;

	if (filter) {

		nfiles = 0;
		FUNC3( directory, "", filter, list, &nfiles );

		list[ nfiles ] = NULL;
		*numfiles = nfiles;

		if (!nfiles)
			return NULL;

		listCopy = FUNC4( ( nfiles + 1 ) * sizeof( *listCopy ) );
		for ( i = 0 ; i < nfiles ; i++ ) {
			listCopy[i] = list[i];
		}
		listCopy[i] = NULL;

		return listCopy;
	}

	if ( !extension)
		extension = "";

	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		dironly = qtrue;
	}

	extLen = FUNC9( extension );

	// search
	nfiles = 0;

	if ((fdir = FUNC6(directory)) == NULL) {
		*numfiles = 0;
		return NULL;
	}

	while ((d = FUNC7(fdir)) != NULL) {
		FUNC0(search, sizeof(search), "%s/%s", directory, d->d_name);
		if (FUNC8(search, &st) == -1)
			continue;
		if ((dironly && !(st.st_mode & S_IFDIR)) ||
			(!dironly && (st.st_mode & S_IFDIR)))
			continue;

		if (*extension) {
			if ( FUNC9( d->d_name ) < extLen ||
				FUNC2(
					d->d_name + FUNC9( d->d_name ) - extLen,
					extension ) ) {
				continue; // didn't match
			}
		}

		if ( nfiles == MAX_FOUND_FILES - 1 )
			break;
		list[ nfiles ] = FUNC1( d->d_name );
		nfiles++;
	}

	list[ nfiles ] = NULL;

	FUNC5(fdir);

	// return a copy of the list
	*numfiles = nfiles;

	if ( !nfiles ) {
		return NULL;
	}

	listCopy = FUNC4( ( nfiles + 1 ) * sizeof( *listCopy ) );
	for ( i = 0 ; i < nfiles ; i++ ) {
		listCopy[i] = list[i];
	}
	listCopy[i] = NULL;

	return listCopy;
}