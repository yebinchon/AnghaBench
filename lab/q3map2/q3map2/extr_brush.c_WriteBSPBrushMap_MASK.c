#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__** p; } ;
typedef  TYPE_1__ winding_t ;
struct TYPE_9__ {size_t planenum; } ;
typedef  TYPE_2__ side_t ;
struct TYPE_10__ {int numsides; TYPE_2__* sides; struct TYPE_10__* next; } ;
typedef  TYPE_3__ brush_t ;
struct TYPE_11__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (char*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,...) ; 
 TYPE_4__* mapplanes ; 

void FUNC7( char *name, brush_t *list ){
	FILE        *f;
	side_t      *s;
	int i;
	winding_t   *w;


	/* note it */
	FUNC3( "Writing %s\n", name );

	/* open the map file */
	f = FUNC5( name, "wb" );
	if ( f == NULL ) {
		FUNC1( "Can't write %s\b", name );
	}

	FUNC6( f, "{\n\"classname\" \"worldspawn\"\n" );

	for ( ; list ; list = list->next )
	{
		FUNC6( f, "{\n" );
		for ( i = 0,s = list->sides ; i < list->numsides ; i++,s++ )
		{
			// TODO: See if we can use a smaller winding to prevent resolution loss.
			// Is WriteBSPBrushMap() used only to decompile maps?
			w = FUNC0( mapplanes[s->planenum].normal, mapplanes[s->planenum].dist );

			FUNC6( f,"( %i %i %i ) ", (int)w->p[0][0], (int)w->p[0][1], (int)w->p[0][2] );
			FUNC6( f,"( %i %i %i ) ", (int)w->p[1][0], (int)w->p[1][1], (int)w->p[1][2] );
			FUNC6( f,"( %i %i %i ) ", (int)w->p[2][0], (int)w->p[2][1], (int)w->p[2][2] );

			FUNC6( f, "notexture 0 0 0 1 1\n" );
			FUNC2( w );
		}
		FUNC6( f, "}\n" );
	}
	FUNC6( f, "}\n" );

	FUNC4( f );

}