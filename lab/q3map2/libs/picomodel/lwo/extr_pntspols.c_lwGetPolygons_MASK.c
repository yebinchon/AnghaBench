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
struct TYPE_7__ {int offset; int voffset; TYPE_2__* pol; } ;
typedef  TYPE_1__ lwPolygonList ;
struct TYPE_8__ {int nverts; int flags; unsigned int type; TYPE_3__* v; } ;
typedef  TYPE_2__ lwPolygon ;
struct TYPE_9__ {int index; } ;
typedef  TYPE_3__ lwPolVert ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char*) ; 
 unsigned int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 () ; 
 unsigned char* FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int FUNC7 (unsigned char**) ; 
 int FUNC8 (unsigned char**) ; 

int FUNC9( picoMemStream_t *fp, int cksize, lwPolygonList *plist, int ptoffset ){
	lwPolygon *pp;
	lwPolVert *pv;
	unsigned char *buf, *bp;
	int i, j, flags, nv, nverts, npols;
	unsigned int type;


	if ( cksize == 0 ) {
		return 1;
	}

	/* read the whole chunk */

	FUNC6( 0 );
	type = FUNC1( fp );
	buf = FUNC3( fp, cksize - 4 );
	if ( cksize != FUNC2() ) {
		goto Fail;
	}

	/* count the polygons and vertices */

	nverts = 0;
	npols = 0;
	bp = buf;

	while ( bp < buf + cksize - 4 ) {
		nv = FUNC7( &bp );
		nv &= 0x03FF;
		nverts += nv;
		npols++;
		for ( i = 0; i < nv; i++ )
			j = FUNC8( &bp );
	}

	if ( !FUNC4( plist, npols, nverts ) ) {
		goto Fail;
	}

	/* fill in the new polygons */

	bp = buf;
	pp = plist->pol + plist->offset;
	pv = plist->pol[ 0 ].v + plist->voffset;

	for ( i = 0; i < npols; i++ ) {
		nv = FUNC7( &bp );
		flags = nv & 0xFC00;
		nv &= 0x03FF;

		pp->nverts = nv;
		pp->flags = flags;
		pp->type = type;
		if ( !pp->v ) {
			pp->v = pv;
		}
		for ( j = 0; j < nv; j++ )
			pp->v[ j ].index = FUNC8( &bp ) + ptoffset;

		pp++;
		pv += nv;
	}

	FUNC0( buf );
	return 1;

Fail:
	if ( buf ) {
		FUNC0( buf );
	}
	FUNC5( plist );
	return 0;
}