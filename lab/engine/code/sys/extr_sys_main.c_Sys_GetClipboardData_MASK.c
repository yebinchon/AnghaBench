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
 int /*<<< orphan*/  FUNC0 (char*,char*,size_t) ; 
 char* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 

char *FUNC6(void)
{
#ifdef DEDICATED
	return NULL;
#else
	char *data = NULL;
	char *cliptext;

	if ( ( cliptext = FUNC1() ) != NULL ) {
		if ( cliptext[0] != '\0' ) {
			size_t bufsize = FUNC4( cliptext ) + 1;

			data = FUNC3( bufsize );
			FUNC0( data, cliptext, bufsize );

			// find first listed char and set to '\0'
			FUNC5( data, "\n\r\b" );
		}
		FUNC2( cliptext );
	}
	return data;
#endif
}