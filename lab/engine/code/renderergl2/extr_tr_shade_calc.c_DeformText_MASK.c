#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
struct TYPE_2__ {float** xyz; scalar_t__ firstIndex; scalar_t__ numVertexes; scalar_t__ numIndexes; int /*<<< orphan*/ * normal; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC1 (float*,float*,float*,float*,float,float,float,float) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (float*,float*,float*) ; 
 int /*<<< orphan*/  FUNC4 (float*) ; 
 int /*<<< orphan*/  FUNC5 (float*,int,float*,float*) ; 
 int /*<<< orphan*/  FUNC6 (float*,float,float*) ; 
 int FUNC7 (char const*) ; 
 TYPE_1__ tess ; 

void FUNC8( const char *text ) {
	int		i;
	vec3_t	origin, width, height;
	int		len;
	int		ch;
	float	color[4];
	float	bottom, top;
	vec3_t	mid;
	vec3_t fNormal;

	height[0] = 0;
	height[1] = 0;
	height[2] = -1;

	FUNC2(fNormal, tess.normal[0]);
	FUNC0( fNormal, height, width );

	// find the midpoint of the box
	FUNC4( mid );
	bottom = 999999;
	top = -999999;
	for ( i = 0 ; i < 4 ; i++ ) {
		FUNC3( tess.xyz[i], mid, mid );
		if ( tess.xyz[i][2] < bottom ) {
			bottom = tess.xyz[i][2];
		}
		if ( tess.xyz[i][2] > top ) {
			top = tess.xyz[i][2];
		}
	}
	FUNC6( mid, 0.25f, origin );

	// determine the individual character size
	height[0] = 0;
	height[1] = 0;
	height[2] = ( top - bottom ) * 0.5f;

	FUNC6( width, height[2] * -0.75f, width );

	// determine the starting position
	len = FUNC7( text );
	FUNC5( origin, (len-1), width, origin );

	// clear the shader indexes
	tess.numIndexes = 0;
	tess.numVertexes = 0;
	tess.firstIndex = 0;

	color[0] = color[1] = color[2] = color[3] = 1.0f;

	// draw each character
	for ( i = 0 ; i < len ; i++ ) {
		ch = text[i];
		ch &= 255;

		if ( ch != ' ' ) {
			int		row, col;
			float	frow, fcol, size;

			row = ch>>4;
			col = ch&15;

			frow = row*0.0625f;
			fcol = col*0.0625f;
			size = 0.0625f;

			FUNC1( origin, width, height, color, fcol, frow, fcol + size, frow + size );
		}
		FUNC5( origin, -2, width, origin );
	}
}