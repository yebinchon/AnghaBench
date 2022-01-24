#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int colorInt; } ;
typedef  TYPE_4__ fog_t ;
struct TYPE_8__ {scalar_t__* texcoords; int /*<<< orphan*/ * colors; } ;
struct TYPE_12__ {int fogNum; int numVertexes; int /*<<< orphan*/  indexes; int /*<<< orphan*/  numIndexes; TYPE_3__* shader; TYPE_2__ svars; } ;
struct TYPE_11__ {int /*<<< orphan*/  fogImage; TYPE_1__* world; } ;
struct TYPE_9__ {scalar_t__ fogPass; } ;
struct TYPE_7__ {TYPE_4__* fogs; } ;

/* Variables and functions */
 scalar_t__ FP_EQUAL ; 
 int GLS_DEPTHFUNC_EQUAL ; 
 int GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA ; 
 int GLS_SRCBLEND_SRC_ALPHA ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GL_COLOR_ARRAY ; 
 int /*<<< orphan*/  GL_FLOAT ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  GL_TEXTURE_COORD_ARRAY ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 int /*<<< orphan*/  FUNC2 (float*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_6__ tess ; 
 TYPE_5__ tr ; 

__attribute__((used)) static void FUNC7( void ) {
	fog_t		*fog;
	int			i;

	FUNC5( GL_COLOR_ARRAY );
	FUNC4( 4, GL_UNSIGNED_BYTE, 0, tess.svars.colors );

	FUNC5( GL_TEXTURE_COORD_ARRAY);
	FUNC6( 2, GL_FLOAT, 0, tess.svars.texcoords[0] );

	fog = tr.world->fogs + tess.fogNum;

	for ( i = 0; i < tess.numVertexes; i++ ) {
		* ( int * )&tess.svars.colors[i] = fog->colorInt;
	}

	FUNC2( ( float * ) tess.svars.texcoords[0] );

	FUNC0( tr.fogImage );

	if ( tess.shader->fogPass == FP_EQUAL ) {
		FUNC1( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA | GLS_DEPTHFUNC_EQUAL );
	} else {
		FUNC1( GLS_SRCBLEND_SRC_ALPHA | GLS_DSTBLEND_ONE_MINUS_SRC_ALPHA );
	}

	FUNC3( tess.numIndexes, tess.indexes );
}