#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ time_t ;
struct TYPE_2__ {int /*<<< orphan*/  (* write ) (char*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 TYPE_1__* game ; 
 int /*<<< orphan*/  FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__*) ; 

void FUNC7( const char *filename ){
	char tempname[ 1024 ];
	time_t tm;


	/* dummy check */
	if ( game == NULL || game->write == NULL ) {
		FUNC0( "WriteBSPFile: unsupported BSP file format" );
	}

	/* make fake temp name so existing bsp file isn't damaged in case write process fails */
	FUNC6( &tm );
	FUNC4( tempname, "%s.%08X", filename, (int) tm );

	/* byteswap, write the bsp, then swap back so it can be manipulated further */
	FUNC1();
	game->write( tempname );
	FUNC1();

	/* replace existing bsp file */
	FUNC2( filename );
	FUNC3( tempname, filename );
}