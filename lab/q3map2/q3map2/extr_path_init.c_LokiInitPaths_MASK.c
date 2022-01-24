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
typedef  int /*<<< orphan*/  temp ;
typedef  scalar_t__ qboolean ;

/* Variables and functions */
 char* FUNC0 () ; 
 int MAX_OS_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,int) ; 
 int /*<<< orphan*/  X_OK ; 
 scalar_t__ FUNC4 (char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 char* homePath ; 
 char* installPath ; 
 scalar_t__ qfalse ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int FUNC9 (char*) ; 
 char* FUNC10 (char*,char) ; 

void FUNC11( char *argv0 ){
	#ifndef Q_UNIX
	/* this is kinda crap, but hey */
	FUNC8( installPath, "../" );
	#else
	char temp[ MAX_OS_PATH ];
	char        *home;
	char        *path;
	char        *last;
	qboolean found;


	/* get home dir */
	home = LokiGetHomeDir();
	if ( home == NULL ) {
		home = ".";
	}

	path = getenv( "PATH" );

	/* do some path divining */
	Q_strncpyz( temp, argv0, sizeof( temp ) );
	if ( strrchr( temp, '/' ) ) {
		argv0 = strrchr( argv0, '/' ) + 1;
	}
	else if ( path ) {
		found = qfalse;
		last = path;

		/* go through each : segment of path */
		while ( last[ 0 ] != '\0' && found == qfalse )
		{
			/* null out temp */
			temp[ 0 ] = '\0';

			/* find next chunk */
			last = strchr( path, ':' );
			if ( last == NULL ) {
				last = path + strlen( path );
			}

			/* found home dir candidate */
			if ( *path == '~' ) {
				Q_strncpyz( temp, home, sizeof( temp ) );
				path++;
			}

			/* concatenate */
			if ( last > ( path + 1 ) ) {
				Q_strncat( temp, sizeof( temp ), path, ( last - path ) );
				Q_strcat( temp, sizeof( temp ), "/" );
			}
			Q_strcat( temp, sizeof( temp ), "./" );
			Q_strcat( temp, sizeof( temp ), argv0 );

			/* verify the path */
			if ( access( temp, X_OK ) == 0 ) {
				found++;
			}
			path = last + 1;
		}
	}

	/* flake */
	if ( realpath( temp, installPath ) ) {
		/* q3map is in "tools/" */
		*( strrchr( installPath, '/' ) ) = '\0';
		*( strrchr( installPath, '/' ) + 1 ) = '\0';
	}

	/* set home path */
	homePath = home;
	#endif
}