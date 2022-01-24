#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  headnode; } ;
typedef  TYPE_1__ tree_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* PORTALFILE ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,char*,...) ; 
 int num_solidfaces ; 
 int num_visclusters ; 
 int num_visportals ; 
 int /*<<< orphan*/  pf ; 
 char* source ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,char*) ; 

void FUNC9( tree_t *tree ){
	char filename[1024];

	FUNC1( SYS_VRB,"--- WritePortalFile ---\n" );

	// write the file
	FUNC8( filename, "%s.prt", source );
	FUNC2( "writing %s\n", filename );
	pf = FUNC6( filename, "w" );
	if ( !pf ) {
		FUNC0( "Error opening %s", filename );
	}

	FUNC7( pf, "%s\n", PORTALFILE );
	FUNC7( pf, "%i\n", num_visclusters );
	FUNC7( pf, "%i\n", num_visportals );
	FUNC7( pf, "%i\n", num_solidfaces );

	FUNC4( tree->headnode );
	FUNC3( tree->headnode );

	FUNC5( pf );
}