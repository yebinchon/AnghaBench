#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
struct TYPE_15__ {int /*<<< orphan*/  dist; int /*<<< orphan*/  normal; } ;
struct TYPE_14__ {int merged; size_t numportals; int num; int hint; int leaf; TYPE_2__ plane; TYPE_4__* winding; struct TYPE_14__** portals; } ;
typedef  TYPE_1__ vportal_t ;
typedef  TYPE_2__ visPlane_t ;
typedef  TYPE_1__ leaf_t ;
struct TYPE_16__ {int numpoints; double** points; } ;
typedef  TYPE_4__ fixedWinding_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 scalar_t__ MAX_MAP_VISIBILITY ; 
 int MAX_POINTS_ON_WINDING ; 
 size_t MAX_PORTALS_ON_LEAF ; 
 void* FUNC1 (int) ; 
 char* PORTALFILE ; 
 int /*<<< orphan*/  FUNC2 (TYPE_4__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 scalar_t__ VIS_HEADER_SIZE ; 
 int /*<<< orphan*/  FUNC5 (double*,double*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ bspVisBytes ; 
 TYPE_1__* faceleafs ; 
 TYPE_1__* faces ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,char*) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,...) ; 
 int leafbytes ; 
 int leaflongs ; 
 TYPE_1__* leafs ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ numBSPVisBytes ; 
 int numfaces ; 
 int numportals ; 
 int portalbytes ; 
 int portalclusters ; 
 int portallongs ; 
 TYPE_1__* portals ; 
 TYPE_1__* FUNC11 (int) ; 
 int /*<<< orphan*/ * stdin ; 
 scalar_t__ FUNC12 (char*,char*) ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC13( char *name ){
	int i, j, hint;
	vportal_t   *p;
	leaf_t      *l;
	char magic[80];
	FILE        *f;
	int numpoints;
	fixedWinding_t  *w;
	int leafnums[2];
	visPlane_t plane;

	if ( !FUNC12( name,"-" ) ) {
		f = stdin;
	}
	else
	{
		f = FUNC8( name, "r" );
		if ( !f ) {
			FUNC0( "LoadPortals: couldn't read %s\n",name );
		}
	}

	if ( FUNC9( f,"%79s\n%i\n%i\n%i\n",magic, &portalclusters, &numportals, &numfaces ) != 4 ) {
		FUNC0( "LoadPortals: failed to read header" );
	}
	if ( FUNC12( magic,PORTALFILE ) ) {
		FUNC0( "LoadPortals: not a portal file" );
	}

	FUNC4( "%6i portalclusters\n", portalclusters );
	FUNC4( "%6i numportals\n", numportals );
	FUNC4( "%6i numfaces\n", numfaces );

	// these counts should take advantage of 64 bit systems automatically
	leafbytes = ( ( portalclusters + 63 ) & ~63 ) >> 3;
	leaflongs = leafbytes / sizeof( long );

	portalbytes = ( ( numportals * 2 + 63 ) & ~63 ) >> 3;
	portallongs = portalbytes / sizeof( long );

	// each file portal is split into two memory portals
	portals = FUNC11( 2 * numportals * sizeof( vportal_t ) );
	FUNC10( portals, 0, 2 * numportals * sizeof( vportal_t ) );

	leafs = FUNC11( portalclusters * sizeof( leaf_t ) );
	FUNC10( leafs, 0, portalclusters * sizeof( leaf_t ) );

	for ( i = 0; i < portalclusters; i++ )
		leafs[i].merged = -1;

	numBSPVisBytes = VIS_HEADER_SIZE + portalclusters * leafbytes;

	if ( numBSPVisBytes > MAX_MAP_VISIBILITY ) {
		FUNC0( "MAX_MAP_VISIBILITY exceeded" );
	}

	( (int *)bspVisBytes )[0] = portalclusters;
	( (int *)bspVisBytes )[1] = leafbytes;

	for ( i = 0, p = portals ; i < numportals ; i++ )
	{
		if ( FUNC9( f, "%i %i %i ", &numpoints, &leafnums[0], &leafnums[1] ) != 3 ) {
			FUNC0( "LoadPortals: reading portal %i", i );
		}
		if ( numpoints > MAX_POINTS_ON_WINDING ) {
			FUNC0( "LoadPortals: portal %i has too many points", i );
		}
		if ( (unsigned)leafnums[0] > portalclusters
			 || (unsigned)leafnums[1] > portalclusters ) {
			FUNC0( "LoadPortals: reading portal %i", i );
		}
		if ( FUNC9( f, "%i ", &hint ) != 1 ) {
			FUNC0( "LoadPortals: reading hint state" );
		}

		w = p->winding = FUNC1( numpoints );
		w->numpoints = numpoints;

		for ( j = 0 ; j < numpoints ; j++ )
		{
			double v[3];
			int k;

			// scanf into double, then assign to vec_t
			// so we don't care what size vec_t is
			if ( FUNC9( f, "(%lf %lf %lf ) "
						 , &v[0], &v[1], &v[2] ) != 3 ) {
				FUNC0( "LoadPortals: reading portal %i", i );
			}
			for ( k = 0 ; k < 3 ; k++ )
				w->points[j][k] = v[k];
		}
		FUNC9( f, "\n" );

		// calc plane
		FUNC2( w, &plane );

		// create forward portal
		l = &leafs[leafnums[0]];
		if ( l->numportals == MAX_PORTALS_ON_LEAF ) {
			FUNC0( "Leaf with too many portals" );
		}
		l->portals[l->numportals] = p;
		l->numportals++;

		p->num = i + 1;
		p->hint = hint;
		p->winding = w;
		FUNC6( vec3_origin, plane.normal, p->plane.normal );
		p->plane.dist = -plane.dist;
		p->leaf = leafnums[1];
		FUNC3( p );
		p++;

		// create backwards portal
		l = &leafs[leafnums[1]];
		if ( l->numportals == MAX_PORTALS_ON_LEAF ) {
			FUNC0( "Leaf with too many portals" );
		}
		l->portals[l->numportals] = p;
		l->numportals++;

		p->num = i + 1;
		p->hint = hint;
		p->winding = FUNC1( w->numpoints );
		p->winding->numpoints = w->numpoints;
		for ( j = 0 ; j < w->numpoints ; j++ )
		{
			FUNC5( w->points[w->numpoints - 1 - j], p->winding->points[j] );
		}

		p->plane = plane;
		p->leaf = leafnums[0];
		FUNC3( p );
		p++;

	}

	faces = FUNC11( 2 * numfaces * sizeof( vportal_t ) );
	FUNC10( faces, 0, 2 * numfaces * sizeof( vportal_t ) );

	faceleafs = FUNC11( portalclusters * sizeof( leaf_t ) );
	FUNC10( faceleafs, 0, portalclusters * sizeof( leaf_t ) );

	for ( i = 0, p = faces; i < numfaces; i++ )
	{
		if ( FUNC9( f, "%i %i ", &numpoints, &leafnums[0] ) != 2 ) {
			FUNC0( "LoadPortals: reading portal %i", i );
		}

		w = p->winding = FUNC1( numpoints );
		w->numpoints = numpoints;

		for ( j = 0 ; j < numpoints ; j++ )
		{
			double v[3];
			int k;

			// scanf into double, then assign to vec_t
			// so we don't care what size vec_t is
			if ( FUNC9( f, "(%lf %lf %lf ) "
						 , &v[0], &v[1], &v[2] ) != 3 ) {
				FUNC0( "LoadPortals: reading portal %i", i );
			}
			for ( k = 0 ; k < 3 ; k++ )
				w->points[j][k] = v[k];
		}
		FUNC9( f, "\n" );

		// calc plane
		FUNC2( w, &plane );

		l = &faceleafs[leafnums[0]];
		l->merged = -1;
		if ( l->numportals == MAX_PORTALS_ON_LEAF ) {
			FUNC0( "Leaf with too many faces" );
		}
		l->portals[l->numportals] = p;
		l->numportals++;

		p->num = i + 1;
		p->winding = w;
		// normal pointing out of the leaf
		FUNC6( vec3_origin, plane.normal, p->plane.normal );
		p->plane.dist = -plane.dist;
		p->leaf = -1;
		FUNC3( p );
		p++;
	}

	FUNC7( f );
}