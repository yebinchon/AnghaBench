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
typedef  scalar_t__ qboolean ;
typedef  int /*<<< orphan*/  filename ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char**) ; 
 char** FUNC3 (char const*,char const*,int /*<<< orphan*/ *,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (char**,int) ; 
 int MAX_STRING_CHARS ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

void	FUNC6( const char *dir, const char *ext,
		qboolean stripExt, void(*callback)(const char *s), qboolean allowNonPureFilesOnDisk ) {
	char	**filenames;
	int		nfiles;
	int		i;
	char	filename[ MAX_STRING_CHARS ];

	filenames = FUNC3( dir, ext, NULL, &nfiles, allowNonPureFilesOnDisk );

	FUNC4( filenames, nfiles );

	for( i = 0; i < nfiles; i++ ) {
		FUNC1( filenames[ i ] );
		FUNC5( filename, filenames[ i ], MAX_STRING_CHARS );

		if( stripExt ) {
			FUNC0(filename, filename, sizeof(filename));
		}

		callback( filename );
	}
	FUNC2( filenames );
}