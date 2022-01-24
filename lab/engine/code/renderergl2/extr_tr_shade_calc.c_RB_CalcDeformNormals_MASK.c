#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec3_t ;
typedef  int /*<<< orphan*/  int16_t ;
struct TYPE_5__ {int frequency; float amplitude; } ;
struct TYPE_6__ {TYPE_1__ deformationWave; } ;
typedef  TYPE_2__ deformStage_t ;
struct TYPE_7__ {int numVertexes; int shaderTime; int /*<<< orphan*/ ** normal; scalar_t__ xyz; } ;

/* Variables and functions */
 float FUNC0 (int,float,float,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,float*) ; 
 int /*<<< orphan*/  FUNC2 (float*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (float*) ; 
 TYPE_3__ tess ; 

void FUNC4( deformStage_t *ds ) {
	int i;
	float	scale;
	float	*xyz = ( float * ) tess.xyz;
	int16_t *normal = tess.normal[0];

	for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 ) {
		vec3_t fNormal;

		FUNC2(fNormal, normal);

		scale = 0.98f;
		scale = FUNC0( xyz[0] * scale, xyz[1] * scale, xyz[2] * scale,
			tess.shaderTime * ds->deformationWave.frequency );
		fNormal[ 0 ] += ds->deformationWave.amplitude * scale;

		scale = 0.98f;
		scale = FUNC0( 100 + xyz[0] * scale, xyz[1] * scale, xyz[2] * scale,
			tess.shaderTime * ds->deformationWave.frequency );
		fNormal[ 1 ] += ds->deformationWave.amplitude * scale;

		scale = 0.98f;
		scale = FUNC0( 200 + xyz[0] * scale, xyz[1] * scale, xyz[2] * scale,
			tess.shaderTime * ds->deformationWave.frequency );
		fNormal[ 2 ] += ds->deformationWave.amplitude * scale;

		FUNC3( fNormal );

		FUNC1(normal, fNormal);
	}
}