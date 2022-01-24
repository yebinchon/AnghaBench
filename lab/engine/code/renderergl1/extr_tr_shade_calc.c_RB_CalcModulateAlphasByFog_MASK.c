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
struct TYPE_2__ {int numVertexes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (float*) ; 
 double FUNC1 (float,float) ; 
 int SHADER_MAX_VERTEXES ; 
 TYPE_1__ tess ; 

void FUNC2( unsigned char *colors ) {
	int		i;
	float	texCoords[SHADER_MAX_VERTEXES][2];

	// calculate texcoords so we can derive density
	// this is not wasted, because it would only have
	// been previously called if the surface was opaque
	FUNC0( texCoords[0] );

	for ( i = 0; i < tess.numVertexes; i++, colors += 4 ) {
		float f = 1.0 - FUNC1( texCoords[i][0], texCoords[i][1] );
		colors[3] *= f;
	}
}