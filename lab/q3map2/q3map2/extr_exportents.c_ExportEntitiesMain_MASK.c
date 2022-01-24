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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 int /*<<< orphan*/  source ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7( int argc, char **argv ){
        /* arg checking */
        if ( argc < 1 ) {
                FUNC5( "Usage: q3map -exportents [-v] <mapname>\n" );
                return 0;
        }
		
        /* do some path mangling */
        FUNC6( source, FUNC1( argv[ argc - 1 ] ) );
        FUNC4( source );
        FUNC0( source, ".bsp" );
		
        /* load the bsp */
        FUNC5( "Loading %s\n", source );
        FUNC3( source );
		
        /* export the lightmaps */
        FUNC2();
		
        /* return to sender */
        return 0;
}