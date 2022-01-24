#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_10__ {scalar_t__ occupied; } ;
struct TYPE_11__ {TYPE_1__ outside_node; int /*<<< orphan*/ * headnode; } ;
typedef  TYPE_2__ tree_t ;
typedef  void* qboolean ;
typedef  int /*<<< orphan*/  node_t ;
struct TYPE_12__ {int /*<<< orphan*/  mapEntityNum; } ;
typedef  TYPE_3__ entity_t ;

/* Variables and functions */
 int FUNC0 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,char*,int*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int*,TYPE_3__*,void*) ; 
 int /*<<< orphan*/  FUNC3 (char const*,char*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC5 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC6 (int*) ; 
 scalar_t__ FUNC7 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int*,float,int*) ; 
 int /*<<< orphan*/  FUNC9 (int*,float,float,float) ; 
 scalar_t__ c_floodedleafs ; 
 int /*<<< orphan*/  eXYZ ; 
 TYPE_3__* entities ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int*,int*,int /*<<< orphan*/ ,int*,int*) ; 
 int numEntities ; 
 void* qfalse ; 
 void* qtrue ; 
 void* skyboxPresent ; 
 int /*<<< orphan*/  skyboxTransform ; 
 int FUNC12 (char const*,char*,int*,int*,int*) ; 
 int /*<<< orphan*/  vec3_origin ; 
 int /*<<< orphan*/  FUNC13 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*) ; 

qboolean FUNC14( tree_t *tree ){
	int i, s;
	vec3_t origin, offset, scale, angles;
	qboolean r, inside, tripped, skybox;
	node_t      *headnode;
	entity_t    *e;
	const char  *value;


	headnode = tree->headnode;
	FUNC4( SYS_VRB,"--- FloodEntities ---\n" );
	inside = qfalse;
	tree->outside_node.occupied = 0;

	tripped = qfalse;
	c_floodedleafs = 0;
	for ( i = 1; i < numEntities; i++ )
	{
		/* get entity */
		e = &entities[ i ];

		/* get origin */
		FUNC1( e, "origin", origin );
		if ( FUNC7( origin, vec3_origin ) ) {
			continue;
		}

		/* handle skybox entities */
		value = FUNC5( e, "classname" );
		if ( !FUNC3( value, "_skybox" ) ) {
			skybox = qtrue;
			skyboxPresent = qtrue;

			/* invert origin */
			FUNC8( origin, -1.0f, offset );

			/* get scale */
			FUNC9( scale, 64.0f, 64.0f, 64.0f );
			value = FUNC5( e, "_scale" );
			if ( value[ 0 ] != '\0' ) {
				s = FUNC12( value, "%f %f %f", &scale[ 0 ], &scale[ 1 ], &scale[ 2 ] );
				if ( s == 1 ) {
					scale[ 1 ] = scale[ 0 ];
					scale[ 2 ] = scale[ 0 ];
				}
			}

			/* get "angle" (yaw) or "angles" (pitch yaw roll) */
			FUNC6( angles );
			angles[ 2 ] = FUNC0( e, "angle" );
			value = FUNC5( e, "angles" );
			if ( value[ 0 ] != '\0' ) {
				FUNC12( value, "%f %f %f", &angles[ 1 ], &angles[ 2 ], &angles[ 0 ] );
			}

			/* set transform matrix (thanks spog) */
			FUNC10( skyboxTransform );
			FUNC11( skyboxTransform, offset, angles, eXYZ, scale, origin );
		}
		else{
			skybox = qfalse;
		}

		/* nudge off floor */
		origin[ 2 ] += 1;

		/* debugging code */
		//%	if( i == 1 )
		//%		origin[ 2 ] += 4096;

		/* find leaf */
		r = FUNC2( headnode, origin, e, skybox );
		if ( r ) {
			inside = qtrue;
		}
		if ( ( !r || tree->outside_node.occupied ) && !tripped ) {
			FUNC13( "Entity leaked", e->mapEntityNum, 0, qfalse );
			tripped = qtrue;
		}
	}

	FUNC4( SYS_VRB, "%9d flooded leafs\n", c_floodedleafs );

	if ( !inside ) {
		FUNC4( SYS_VRB, "no entities in open -- no filling\n" );
	}
	else if ( tree->outside_node.occupied ) {
		FUNC4( SYS_VRB, "entity reached from outside -- no filling\n" );
	}

	return (qboolean) ( inside && !tree->outside_node.occupied );
}