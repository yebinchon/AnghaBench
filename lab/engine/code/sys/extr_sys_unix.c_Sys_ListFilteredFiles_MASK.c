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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  search ;
typedef  int /*<<< orphan*/  newsubdirs ;
typedef  int /*<<< orphan*/  filename ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char const*,...) ; 
 char* FUNC2 (char*) ; 
 int MAX_FOUND_FILES ; 
 int MAX_OSPATH ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int S_IFDIR ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  qfalse ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (char*,struct stat*) ; 
 scalar_t__ FUNC8 (char*) ; 

void FUNC9( const char *basedir, char *subdirs, char *filter, char **list, int *numfiles )
{
	char          search[MAX_OSPATH], newsubdirs[MAX_OSPATH];
	char          filename[MAX_OSPATH];
	DIR           *fdir;
	struct dirent *d;
	struct stat   st;

	if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
		return;
	}

	if (FUNC8(subdirs)) {
		FUNC1( search, sizeof(search), "%s/%s", basedir, subdirs );
	}
	else {
		FUNC1( search, sizeof(search), "%s", basedir );
	}

	if ((fdir = FUNC5(search)) == NULL) {
		return;
	}

	while ((d = FUNC6(fdir)) != NULL) {
		FUNC1(filename, sizeof(filename), "%s/%s", search, d->d_name);
		if (FUNC7(filename, &st) == -1)
			continue;

		if (st.st_mode & S_IFDIR) {
			if (FUNC3(d->d_name, ".") && FUNC3(d->d_name, "..")) {
				if (FUNC8(subdirs)) {
					FUNC1( newsubdirs, sizeof(newsubdirs), "%s/%s", subdirs, d->d_name);
				}
				else {
					FUNC1( newsubdirs, sizeof(newsubdirs), "%s", d->d_name);
				}
				FUNC9( basedir, newsubdirs, filter, list, numfiles );
			}
		}
		if ( *numfiles >= MAX_FOUND_FILES - 1 ) {
			break;
		}
		FUNC1( filename, sizeof(filename), "%s/%s", subdirs, d->d_name );
		if (!FUNC0( filter, filename, qfalse ))
			continue;
		list[ *numfiles ] = FUNC2( filename );
		(*numfiles)++;
	}

	FUNC4(fdir);
}