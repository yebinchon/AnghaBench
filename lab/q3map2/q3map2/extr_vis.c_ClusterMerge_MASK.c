#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {scalar_t__ status; scalar_t__ portalvis; scalar_t__ removed; } ;
typedef  TYPE_1__ vportal_t ;
struct TYPE_6__ {int merged; int numportals; TYPE_1__** portals; } ;
typedef  TYPE_2__ leaf_t ;
typedef  int byte ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int FUNC1 (int*,int*) ; 
 int MAX_MAP_LEAFS ; 
 int MAX_PORTALS ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int,int) ; 
 scalar_t__ VIS_HEADER_SIZE ; 
 scalar_t__ bspVisBytes ; 
 int leafbytes ; 
 TYPE_2__* leafs ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int*,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int portalbytes ; 
 int portallongs ; 
 TYPE_1__* portals ; 
 scalar_t__ stat_done ; 
 int totalvis ; 

void FUNC5( int leafnum ){
	leaf_t      *leaf;
	byte portalvector[MAX_PORTALS / 8];
	byte uncompressed[MAX_MAP_LEAFS / 8];
	int i, j;
	int numvis, mergedleafnum;
	vportal_t   *p;
	int pnum;

	// OR together all the portalvis bits

	mergedleafnum = leafnum;
	while ( leafs[mergedleafnum].merged >= 0 )
		mergedleafnum = leafs[mergedleafnum].merged;

	FUNC4( portalvector, 0, portalbytes );
	leaf = &leafs[mergedleafnum];
	for ( i = 0; i < leaf->numportals; i++ )
	{
		p = leaf->portals[i];
		if ( p->removed ) {
			continue;
		}

		if ( p->status != stat_done ) {
			FUNC0( "portal not done" );
		}
		for ( j = 0 ; j < portallongs ; j++ )
			( (long *)portalvector )[j] |= ( (long *)p->portalvis )[j];
		pnum = p - portals;
		portalvector[pnum >> 3] |= 1 << ( pnum & 7 );
	}

	FUNC4( uncompressed, 0, leafbytes );

	uncompressed[mergedleafnum >> 3] |= ( 1 << ( mergedleafnum & 7 ) );
	// convert portal bits to leaf bits
	numvis = FUNC1( portalvector, uncompressed );

//	if (uncompressed[leafnum>>3] & (1<<(leafnum&7)))
//		Sys_FPrintf( SYS_WRN, "WARNING: Leaf portals saw into leaf\n");

//	uncompressed[leafnum>>3] |= (1<<(leafnum&7));

	numvis++;       // count the leaf itself

	totalvis += numvis;

	FUNC2( SYS_VRB,"cluster %4i : %4i visible\n", leafnum, numvis );

	FUNC3( bspVisBytes + VIS_HEADER_SIZE + leafnum * leafbytes, uncompressed, leafbytes );
}