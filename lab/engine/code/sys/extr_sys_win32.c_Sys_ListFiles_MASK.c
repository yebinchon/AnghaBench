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
struct _finddata_t {int attrib; char const* name; } ;
typedef  int /*<<< orphan*/  search ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,char const*,char const*) ; 
 char* FUNC1 (char const*) ; 
 int MAX_FOUND_FILES ; 
 int MAX_OSPATH ; 
 scalar_t__ FUNC2 (char const*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*,char*,char**,int*) ; 
 char** FUNC4 (int) ; 
 int _A_SUBDIR ; 
 int /*<<< orphan*/  FUNC5 (intptr_t) ; 
 intptr_t FUNC6 (char*,struct _finddata_t*) ; 
 int FUNC7 (intptr_t,struct _finddata_t*) ; 
 scalar_t__ FUNC8 (char*,char*) ; 
 int FUNC9 (char const*) ; 

char **FUNC10( const char *directory, const char *extension, char *filter, int *numfiles, qboolean wantsubs )
{
	char		search[MAX_OSPATH];
	int			nfiles;
	char		**listCopy;
	char		*list[MAX_FOUND_FILES];
	struct _finddata_t findinfo;
	intptr_t		findhandle;
	int			flag;
	int			i;
	int			extLen;

	if (filter) {

		nfiles = 0;
		FUNC3( directory, "", filter, list, &nfiles );

		list[ nfiles ] = 0;
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

	if ( !extension) {
		extension = "";
	}

	// passing a slash as extension will find directories
	if ( extension[0] == '/' && extension[1] == 0 ) {
		extension = "";
		flag = 0;
	} else {
		flag = _A_SUBDIR;
	}

	extLen = FUNC9( extension );

	FUNC0( search, sizeof(search), "%s\\*%s", directory, extension );

	// search
	nfiles = 0;

	findhandle = FUNC6 (search, &findinfo);
	if (findhandle == -1) {
		*numfiles = 0;
		return NULL;
	}

	do {
		if ( (!wantsubs && flag ^ ( findinfo.attrib & _A_SUBDIR )) || (wantsubs && findinfo.attrib & _A_SUBDIR) ) {
			if (*extension) {
				if ( FUNC9( findinfo.name ) < extLen ||
					FUNC2(
						findinfo.name + FUNC9( findinfo.name ) - extLen,
						extension ) ) {
					continue; // didn't match
				}
			}
			if ( nfiles == MAX_FOUND_FILES - 1 ) {
				break;
			}
			list[ nfiles ] = FUNC1( findinfo.name );
			nfiles++;
		}
	} while ( FUNC7 (findhandle, &findinfo) != -1 );

	list[ nfiles ] = 0;

	FUNC5 (findhandle);

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

	do {
		flag = 0;
		for(i=1; i<nfiles; i++) {
			if (FUNC8(listCopy[i-1], listCopy[i])) {
				char *temp = listCopy[i];
				listCopy[i] = listCopy[i-1];
				listCopy[i-1] = temp;
				flag = 1;
			}
		}
	} while(flag);

	return listCopy;
}