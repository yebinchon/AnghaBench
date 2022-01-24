#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_10__ {TYPE_1__* currentEntity; } ;
struct TYPE_9__ {int stencilBits; } ;
struct TYPE_8__ {int numVertexes; float** xyz; int numIndexes; int* indexes; } ;
struct TYPE_7__ {int /*<<< orphan*/  whiteImage; } ;
struct TYPE_6__ {int /*<<< orphan*/  lightDir; } ;
typedef  int /*<<< orphan*/  GLboolean ;

/* Variables and functions */
 int /*<<< orphan*/  CT_BACK_SIDED ; 
 int /*<<< orphan*/  CT_FRONT_SIDED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int GLS_DSTBLEND_ZERO ; 
 int GLS_SRCBLEND_ONE ; 
 int /*<<< orphan*/  GL_ALWAYS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COLOR_WRITEMASK ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_DECR ; 
 int /*<<< orphan*/  GL_FALSE ; 
 int /*<<< orphan*/  GL_INCR ; 
 int /*<<< orphan*/  GL_KEEP ; 
 int /*<<< orphan*/  GL_STENCIL_TEST ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int,int,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (float*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (float*,float*,int /*<<< orphan*/ ) ; 
 TYPE_5__ backEnd ; 
 int* facing ; 
 TYPE_4__ glConfig ; 
 int /*<<< orphan*/  numEdgeDefs ; 
 int /*<<< orphan*/  FUNC11 (float,float,float) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * shadowXyz ; 
 TYPE_3__ tess ; 
 TYPE_2__ tr ; 

void FUNC17( void ) {
	int		i;
	int		numTris;
	vec3_t	lightDir;
	GLboolean rgba[4];

	if ( glConfig.stencilBits < 4 ) {
		return;
	}

	FUNC8( backEnd.currentEntity->lightDir, lightDir );

	// project vertexes away from light direction
	for ( i = 0 ; i < tess.numVertexes ; i++ ) {
		FUNC9( tess.xyz[i], -512, lightDir, shadowXyz[i] );
	}

	// decide which triangles face the light
	FUNC0( numEdgeDefs, 0, 4 * tess.numVertexes );

	numTris = tess.numIndexes / 3;
	for ( i = 0 ; i < numTris ; i++ ) {
		int		i1, i2, i3;
		vec3_t	d1, d2, normal;
		float	*v1, *v2, *v3;
		float	d;

		i1 = tess.indexes[ i*3 + 0 ];
		i2 = tess.indexes[ i*3 + 1 ];
		i3 = tess.indexes[ i*3 + 2 ];

		v1 = tess.xyz[ i1 ];
		v2 = tess.xyz[ i2 ];
		v3 = tess.xyz[ i3 ];

		FUNC10( v2, v1, d1 );
		FUNC10( v3, v1, d2 );
		FUNC1( d1, d2, normal );

		d = FUNC2( normal, lightDir );
		if ( d > 0 ) {
			facing[ i ] = 1;
		} else {
			facing[ i ] = 0;
		}

		// create the edges
		FUNC6( i1, i2, facing[ i ] );
		FUNC6( i2, i3, facing[ i ] );
		FUNC6( i3, i1, facing[ i ] );
	}

	// draw the silhouette edges

	FUNC3( tr.whiteImage );
	FUNC5( GLS_SRCBLEND_ONE | GLS_DSTBLEND_ZERO );
	FUNC11( 0.2f, 0.2f, 0.2f );

	// don't write to the color buffer
	FUNC14(GL_COLOR_WRITEMASK, rgba);
	FUNC12( GL_FALSE, GL_FALSE, GL_FALSE, GL_FALSE );

	FUNC13( GL_STENCIL_TEST );
	FUNC15( GL_ALWAYS, 1, 255 );

	FUNC4( CT_BACK_SIDED );
	FUNC16( GL_KEEP, GL_KEEP, GL_INCR );

	FUNC7();

	FUNC4( CT_FRONT_SIDED );
	FUNC16( GL_KEEP, GL_KEEP, GL_DECR );

	FUNC7();


	// reenable writing to the color buffer
	FUNC12(rgba[0], rgba[1], rgba[2], rgba[3]);
}