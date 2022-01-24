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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*) ; 
 int FUNC1 (char const*) ; 

char *FUNC2( char *path, const char *ext ){
	char *src;
	int remfext = 0;

	src = path + ( FUNC1( path ) - 1 );

	if ( ext == NULL ) {
		ext = "";
	}
	if ( FUNC1( ext ) < 1 ) {
		remfext = 1;
	}
	if ( FUNC1( path ) < 1 ) {
		return path;
	}

	while ( ( src-- ) != path )
	{
		if ( *src == '/' || *src == '\\' ) {
			return path;
		}

		if ( *src == '.' ) {
			if ( remfext ) {
				*src = '\0';
				return path;
			}
			*( ++src ) = '\0';
			break;
		}
	}
	FUNC0( path,ext );
	return path;
}