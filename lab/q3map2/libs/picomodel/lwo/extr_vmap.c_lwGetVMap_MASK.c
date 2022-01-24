#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  picoMemStream_t ;
struct TYPE_4__ {int perpoly; int dim; int nverts; float** val; void** pindex; void** vindex; int /*<<< orphan*/  name; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ lwVMap ;

/* Variables and functions */
 float* FUNC0 (int) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*) ; 
 int FUNC3 () ; 
 unsigned char* FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 float FUNC7 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC8 (unsigned char**) ; 
 int FUNC9 (unsigned char**) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char**) ; 
 void* FUNC11 (unsigned char**) ; 

lwVMap *FUNC12( picoMemStream_t *fp, int cksize, int ptoffset, int poloffset,
				   int perpoly ){
	unsigned char *buf, *bp;
	lwVMap *vmap;
	float *f;
	int i, j, npts, rlen;


	/* read the whole chunk */

	FUNC6( 0 );
	buf = FUNC4( fp, cksize );
	if ( !buf ) {
		return NULL;
	}

	vmap = FUNC1( 1, sizeof( lwVMap ) );
	if ( !vmap ) {
		FUNC2( buf );
		return NULL;
	}

	/* initialize the vmap */

	vmap->perpoly = perpoly;

	bp = buf;
	FUNC6( 0 );
	vmap->type = FUNC10( &bp );
	vmap->dim  = FUNC9( &bp );
	vmap->name = FUNC8( &bp );
	rlen = FUNC3();

	/* count the vmap records */

	npts = 0;
	while ( bp < buf + cksize ) {
		i = FUNC11( &bp );
		if ( perpoly ) {
			i = FUNC11( &bp );
		}
		bp += vmap->dim * sizeof( float );
		++npts;
	}

	/* allocate the vmap */

	vmap->nverts = npts;
	vmap->vindex = FUNC1( npts, sizeof( int ) );
	if ( !vmap->vindex ) {
		goto Fail;
	}
	if ( perpoly ) {
		vmap->pindex = FUNC1( npts, sizeof( int ) );
		if ( !vmap->pindex ) {
			goto Fail;
		}
	}

	if ( vmap->dim > 0 ) {
		vmap->val = FUNC1( npts, sizeof( float * ) );
		if ( !vmap->val ) {
			goto Fail;
		}
		f = FUNC0( npts * vmap->dim * sizeof( float ) );
		if ( !f ) {
			goto Fail;
		}
		for ( i = 0; i < npts; i++ )
			vmap->val[ i ] = f + i * vmap->dim;
	}

	/* fill in the vmap values */

	bp = buf + rlen;
	for ( i = 0; i < npts; i++ ) {
		vmap->vindex[ i ] = FUNC11( &bp );
		if ( perpoly ) {
			vmap->pindex[ i ] = FUNC11( &bp );
		}
		for ( j = 0; j < vmap->dim; j++ )
			vmap->val[ i ][ j ] = FUNC7( &bp );
	}

	FUNC2( buf );
	return vmap;

Fail:
	if ( buf ) {
		FUNC2( buf );
	}
	FUNC5( vmap );
	return NULL;
}