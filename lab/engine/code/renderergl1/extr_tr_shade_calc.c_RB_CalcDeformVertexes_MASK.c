#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__* vec3_t ;
struct TYPE_7__ {scalar_t__ frequency; scalar_t__ phase; int /*<<< orphan*/  amplitude; int /*<<< orphan*/  base; int /*<<< orphan*/  func; } ;
struct TYPE_5__ {float deformationSpread; TYPE_4__ deformationWave; } ;
typedef  TYPE_1__ deformStage_t ;
struct TYPE_6__ {int numVertexes; scalar_t__ normal; scalar_t__ xyz; } ;

/* Variables and functions */
 float FUNC0 (TYPE_4__*) ; 
 float* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (float*,float,scalar_t__*) ; 
 float FUNC3 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 TYPE_2__ tess ; 

void FUNC4( deformStage_t *ds )
{
	int i;
	vec3_t	offset;
	float	scale;
	float	*xyz = ( float * ) tess.xyz;
	float	*normal = ( float * ) tess.normal;
	float	*table;

	if ( ds->deformationWave.frequency == 0 )
	{
		scale = FUNC0( &ds->deformationWave );

		for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 )
		{
			FUNC2( normal, scale, offset );
			
			xyz[0] += offset[0];
			xyz[1] += offset[1];
			xyz[2] += offset[2];
		}
	}
	else
	{
		table = FUNC1( ds->deformationWave.func );

		for ( i = 0; i < tess.numVertexes; i++, xyz += 4, normal += 4 )
		{
			float off = ( xyz[0] + xyz[1] + xyz[2] ) * ds->deformationSpread;

			scale = FUNC3( table, ds->deformationWave.base, 
				ds->deformationWave.amplitude,
				ds->deformationWave.phase + off,
				ds->deformationWave.frequency );

			FUNC2( normal, scale, offset );
			
			xyz[0] += offset[0];
			xyz[1] += offset[1];
			xyz[2] += offset[2];
		}
	}
}