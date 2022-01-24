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
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 int /*<<< orphan*/  numBSPEntities ; 
 int /*<<< orphan*/  numEntities ; 
 char* source ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,char*) ; 

void FUNC7( void ){
	char path[ 1024 ];


	FUNC1( SYS_VRB, "--- EndBSPFile ---\n" );

	FUNC0();

	numBSPEntities = numEntities;
	FUNC3();

	/* write the surface extra file */
	FUNC5( source );

	/* write the bsp */
	FUNC6( path, "%s.bsp", source );
	FUNC2( "Writing %s\n", path );
	FUNC4( path );
}