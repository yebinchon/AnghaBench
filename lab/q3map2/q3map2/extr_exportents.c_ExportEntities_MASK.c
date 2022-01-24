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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  SYS_WRN ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 char* bspEntData ; 
 scalar_t__ bspEntDataSize ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  source ; 
 int /*<<< orphan*/  FUNC7 (char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char*,int /*<<< orphan*/ ) ; 

void FUNC9( void ){
        char filename[ 1024 ];
        FILE *file;
		
        /* note it */
        FUNC2( SYS_VRB, "--- ExportEntities ---\n" );
		
        /* do some path mangling */
        FUNC8( filename, source );
        FUNC1( filename );
        FUNC7( filename, ".ent" );
		
        /* sanity check */
        if ( bspEntDataSize == 0 ) {
			FUNC2( SYS_WRN, "WARNING: No BSP entity data. aborting...\n" );
			return;
        }
		
        /* write it */
        FUNC3( "Writing %s\n", filename );
        FUNC2( SYS_VRB, "(%d bytes)\n", bspEntDataSize );
        file = FUNC5( filename, "w" );
		
        if ( file == NULL ) {
                FUNC0( "Unable to open %s for writing", filename );
        }
		
        FUNC6( file, "%s\n", bspEntData );
        FUNC4( file );
}