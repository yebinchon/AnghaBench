#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
typedef  int /*<<< orphan*/  lwSurface ;
struct TYPE_7__ {int offset; int voffset; TYPE_2__* pol; } ;
typedef  TYPE_1__ lwPolygonList ;
struct TYPE_8__ {int nverts; int /*<<< orphan*/ * surf; TYPE_3__* v; int /*<<< orphan*/  type; } ;
typedef  TYPE_2__ lwPolygon ;
struct TYPE_9__ {int index; } ;
typedef  TYPE_3__ lwPolVert ;

/* Variables and functions */
 int /*<<< orphan*/  ID_FACE ; 
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned char* FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (unsigned char**) ; 
 int FUNC6 (unsigned char**) ; 

int FUNC7( picoMemStream_t *fp, int cksize, lwPolygonList *plist, int ptoffset ){
	lwPolygon *pp;
	lwPolVert *pv;
	unsigned char *buf, *bp;
	int i, j, nv, nverts, npols;


	if ( cksize == 0 ) {
		return 1;
	}

	/* read the whole chunk */

	FUNC4( 0 );
	buf = FUNC1( fp, cksize );
	if ( !buf ) {
		goto Fail;
	}

	/* count the polygons and vertices */

	nverts = 0;
	npols = 0;
	bp = buf;

	while ( bp < buf + cksize ) {
		nv = FUNC6( &bp );
		nverts += nv;
		npols++;
		bp += 2 * nv;
		i = FUNC5( &bp );
		if ( i < 0 ) {
			bp += 2;             /* detail polygons */
		}
	}

	if ( !FUNC2( plist, npols, nverts ) ) {
		goto Fail;
	}

	/* fill in the new polygons */

	bp = buf;
	pp = plist->pol + plist->offset;
	pv = plist->pol[ 0 ].v + plist->voffset;

	for ( i = 0; i < npols; i++ ) {
		nv = FUNC6( &bp );

		pp->nverts = nv;
		pp->type = ID_FACE;
		if ( !pp->v ) {
			pp->v = pv;
		}
		for ( j = 0; j < nv; j++ )
			pv[ j ].index = FUNC6( &bp ) + ptoffset;
		j = FUNC5( &bp );
		if ( j < 0 ) {
			j = -j;
			bp += 2;
		}
		j -= 1;
		pp->surf = ( lwSurface * ) ( (size_t)j );

		pp++;
		pv += nv;
	}

	FUNC0( buf );
	return 1;

Fail:
	if ( buf ) {
		FUNC0( buf );
	}
	FUNC3( plist );
	return 0;
}