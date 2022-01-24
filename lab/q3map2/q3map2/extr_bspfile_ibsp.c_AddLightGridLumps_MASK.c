#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ibspHeader_t ;
struct TYPE_7__ {int /*<<< orphan*/ * latLong; int /*<<< orphan*/  directed; int /*<<< orphan*/  ambient; } ;
typedef  TYPE_1__ ibspGridPoint_t ;
typedef  int /*<<< orphan*/  bspHeader_t ;
struct TYPE_8__ {int /*<<< orphan*/ * latLong; int /*<<< orphan*/ * directed; int /*<<< orphan*/ * ambient; } ;
typedef  TYPE_2__ bspGridPoint_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_1__*,int) ; 
 int /*<<< orphan*/  LUMP_LIGHTGRID ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_2__* bspGridPoints ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int numBSPGridPoints ; 
 TYPE_1__* FUNC3 (int) ; 

__attribute__((used)) static void FUNC4( FILE *file, ibspHeader_t *header ){
	int i;
	bspGridPoint_t  *in;
	ibspGridPoint_t *buffer, *out;


	/* dummy check */
	if ( bspGridPoints == NULL ) {
		return;
	}

	/* allocate temporary buffer */
	buffer = FUNC3( numBSPGridPoints * sizeof( *out ) );

	/* convert */
	in = bspGridPoints;
	out = buffer;
	for ( i = 0; i < numBSPGridPoints; i++ )
	{
		FUNC1( in->ambient[ 0 ], out->ambient );
		FUNC1( in->directed[ 0 ], out->directed );

		out->latLong[ 0 ] = in->latLong[ 0 ];
		out->latLong[ 1 ] = in->latLong[ 1 ];

		in++;
		out++;
	}

	/* write lumps */
	FUNC0( file, (bspHeader_t*) header, LUMP_LIGHTGRID, buffer, ( numBSPGridPoints * sizeof( *out ) ) );

	/* free buffer (ydnar 2002-10-22: [bug 641] thanks Rap70r! */
	FUNC2( buffer );
}