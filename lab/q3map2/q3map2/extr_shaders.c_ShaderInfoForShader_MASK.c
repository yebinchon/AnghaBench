#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* shader; scalar_t__ finished; } ;
typedef  TYPE_1__ shaderInfo_t ;

/* Variables and functions */
 TYPE_1__* FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int MAX_QPATH ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int numShaderInfo ; 
 scalar_t__ qfalse ; 
 TYPE_1__* shaderInfo ; 
 int /*<<< orphan*/  FUNC6 (char*,char const*) ; 

shaderInfo_t *FUNC7( const char *shaderName ){
	int i;
	shaderInfo_t    *si;
	char shader[ MAX_QPATH ];


	/* dummy check */
	if ( shaderName == NULL || shaderName[ 0 ] == '\0' ) {
		FUNC5( SYS_WRN, "WARNING: Null or empty shader name\n" );
		shaderName = "missing";
	}

	/* strip off extension */
	FUNC6( shader, shaderName );
	FUNC4( shader );

	/* search for it */
	for ( i = 0; i < numShaderInfo; i++ )
	{
		si = &shaderInfo[ i ];
		if ( !FUNC3( shader, si->shader ) ) {
			/* load image if necessary */
			if ( si->finished == qfalse ) {
				FUNC2( si );
				FUNC1( si );
			}

			/* return it */
			return si;
		}
	}

	/* allocate a default shader */
	si = FUNC0();
	FUNC6( si->shader, shader );
	FUNC2( si );
	FUNC1( si );

	/* return it */
	return si;
}