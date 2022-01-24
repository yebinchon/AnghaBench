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
 int /*<<< orphan*/  BasePortalVis ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 char* FUNC8 (int /*<<< orphan*/ *,char*) ; 
 float FUNC9 (char const*) ; 
 int /*<<< orphan*/ * entities ; 
 float farPlaneDist ; 
 scalar_t__ fastvis ; 
 scalar_t__ noPassageVis ; 
 int numportals ; 
 scalar_t__ passageVisOnly ; 
 int portalclusters ; 
 int /*<<< orphan*/  qtrue ; 
 int totalvis ; 

void FUNC10( void ){
	int i;
	const char  *value;


	/* ydnar: rr2do2's farplane code */
	farPlaneDist = 0.0f;
	value = FUNC8( &entities[ 0 ], "_farplanedist" );     /* proper '_' prefixed key */
	if ( value[ 0 ] == '\0' ) {
		value = FUNC8( &entities[ 0 ], "fogclip" );       /* wolf compatibility */
	}
	if ( value[ 0 ] == '\0' ) {
		value = FUNC8( &entities[ 0 ], "distancecull" );  /* sof2 compatibility */
	}
	if ( value[ 0 ] != '\0' ) {
		farPlaneDist = FUNC9( value );
		if ( farPlaneDist > 0.0f ) {
			FUNC7( "farplane distance = %.1f\n", farPlaneDist );
		}
		else{
			farPlaneDist = 0.0f;
		}
	}



	FUNC7( "\n--- BasePortalVis (%d) ---\n", numportals * 2 );
	FUNC5( numportals * 2, qtrue, BasePortalVis );

//	RunThreadsOnIndividual (numportals*2, qtrue, BetterPortalVis);

	FUNC6();

	if ( fastvis ) {
		FUNC0();
	}
	else if ( noPassageVis ) {
		FUNC3();
	}
	else if ( passageVisOnly ) {
		FUNC2();
	}
	else {
		FUNC1();
	}
	//
	// assemble the leaf vis lists by oring and compressing the portal lists
	//
	FUNC7( "creating leaf vis...\n" );
	for ( i = 0 ; i < portalclusters ; i++ )
		FUNC4( i );

	FUNC7( "Total visible clusters: %i\n", totalvis );
	FUNC7( "Average clusters visible: %i\n", totalvis / portalclusters );
}