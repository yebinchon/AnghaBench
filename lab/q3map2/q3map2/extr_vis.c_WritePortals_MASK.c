#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int hint; TYPE_2__* winding; scalar_t__ removed; } ;
typedef  TYPE_1__ vportal_t ;
struct TYPE_5__ {int numpoints; int /*<<< orphan*/ ** points; } ;
typedef  TYPE_2__ fixedWinding_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*) ; 
 char* PORTALFILE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,...) ; 
 int numportals ; 
 TYPE_1__* portals ; 

void FUNC5( char *filename ){
	int i, j, num;
	FILE *pf;
	vportal_t *p;
	fixedWinding_t *w;

	// write the file
	pf = FUNC3( filename, "w" );
	if ( !pf ) {
		FUNC0( "Error opening %s", filename );
	}

	num = 0;
	for ( j = 0; j < numportals * 2; j++ )
	{
		p = portals + j;
		if ( p->removed ) {
			continue;
		}
//		if (!p->hint)
//			continue;
		num++;
	}

	FUNC4( pf, "%s\n", PORTALFILE );
	FUNC4( pf, "%i\n", 0 );
	FUNC4( pf, "%i\n", num ); // + numfaces);
	FUNC4( pf, "%i\n", 0 );

	for ( j = 0; j < numportals * 2; j++ )
	{
		p = portals + j;
		if ( p->removed ) {
			continue;
		}
//		if (!p->hint)
//			continue;
		w = p->winding;
		FUNC4( pf,"%i %i %i ",w->numpoints, 0, 0 );
		FUNC4( pf, "%d ", p->hint );
		for ( i = 0 ; i < w->numpoints ; i++ )
		{
			FUNC4( pf,"(" );
			FUNC1( pf, w->points[i][0] );
			FUNC1( pf, w->points[i][1] );
			FUNC1( pf, w->points[i][2] );
			FUNC4( pf,") " );
		}
		FUNC4( pf,"\n" );
	}

	/*
	   for (j = 0; j < numfaces; j++)
	   {
	    p = faces + j;
	    w = p->winding;
	    fprintf (pf,"%i %i %i ",w->numpoints, 0, 0);
	    fprintf (pf, "0 ");
	    for (i=0 ; i<w->numpoints ; i++)
	    {
	        fprintf (pf,"(");
	        WriteFloat (pf, w->points[i][0]);
	        WriteFloat (pf, w->points[i][1]);
	        WriteFloat (pf, w->points[i][2]);
	        fprintf (pf,") ");
	    }
	    fprintf (pf,"\n");
	   }*/

	FUNC2( pf );
}