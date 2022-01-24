#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
typedef  float* vec4_t ;
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_15__ {struct TYPE_15__* next; int /*<<< orphan*/  shaderInfo; int /*<<< orphan*/  mesh; int /*<<< orphan*/  longestCurve; int /*<<< orphan*/  eMaxs; int /*<<< orphan*/  eMins; } ;
typedef  TYPE_1__ parseMesh_t ;
struct TYPE_16__ {int width; int height; TYPE_4__* verts; } ;
typedef  TYPE_2__ mesh_t ;
struct TYPE_17__ {TYPE_1__* patches; int /*<<< orphan*/  origin; int /*<<< orphan*/ * epairs; } ;
typedef  TYPE_3__ entity_t ;
struct TYPE_18__ {int /*<<< orphan*/  xyz; } ;
typedef  TYPE_4__ bspDrawVert_t ;

/* Variables and functions */
 float FUNC0 (int /*<<< orphan*/ ,float*) ; 
 TYPE_3__* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,float*,float,int,TYPE_4__**) ; 
 scalar_t__ PLANAR_EPSILON ; 
 scalar_t__ FUNC5 (float*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__) ; 
 scalar_t__ FUNC7 (char const*,char*) ; 
 TYPE_2__* FUNC8 (TYPE_2__*) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  SYS_WRN ; 
 TYPE_2__* FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC11 (TYPE_3__*,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 float FUNC15 (int /*<<< orphan*/ ,float*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* entities ; 
 scalar_t__ FUNC18 (float) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_2__*) ; 
 int numEntities ; 
 int /*<<< orphan*/  numProjectors ; 
 int /*<<< orphan*/  patchSubdivisions ; 
 int /*<<< orphan*/  vec3_origin ; 

void FUNC20( void ){
	int i, j, x, y, pw[ 5 ], r, iterations;
	float distance;
	vec4_t projection, plane;
	vec3_t origin, target, delta;
	entity_t            *e, *e2;
	parseMesh_t         *p;
	mesh_t              *mesh, *subdivided;
	bspDrawVert_t       *dv[ 4 ];
	const char          *value;


	/* note it */
	FUNC10( SYS_VRB, "--- ProcessDecals ---\n" );

	/* walk entity list */
	for ( i = 0; i < numEntities; i++ )
	{
		/* get entity */
		e = &entities[ i ];
		value = FUNC11( e, "classname" );
		if ( FUNC7( value, "_decal" ) ) {
			continue;
		}

		/* any patches? */
		if ( e->patches == NULL ) {
			FUNC10( SYS_WRN, "WARNING: Decal entity without any patch meshes, ignoring.\n" );
			e->epairs = NULL;   /* fixme: leak! */
			continue;
		}

		/* find target */
		value = FUNC11( e, "target" );
		e2 = FUNC1( value );

		/* no target? */
		if ( e2 == NULL ) {
			FUNC10( SYS_WRN, "WARNING: Decal entity without a valid target, ignoring.\n" );
			continue;
		}

		/* walk entity patches */
		for ( p = e->patches; p != NULL; p = e->patches )
		{
			/* setup projector */
			if ( FUNC13( e->origin, vec3_origin ) ) {
				FUNC12( p->eMins, p->eMaxs, origin );
				FUNC16( origin, 0.5f, origin );
			}
			else{
				FUNC14( e->origin, origin );
			}

			FUNC14( e2->origin, target );
			FUNC17( target, origin, delta );

			/* setup projection plane */
			distance = FUNC15( delta, projection );
			projection[ 3 ] = FUNC0( origin, projection );

			/* create projectors */
			if ( distance > 0.125f ) {
				/* tesselate the patch */
				iterations = FUNC3( p->longestCurve, patchSubdivisions );
				subdivided = FUNC9( p->mesh, iterations );

				/* fit it to the curve and remove colinear verts on rows/columns */
				FUNC6( *subdivided );
				mesh = FUNC8( subdivided );
				FUNC2( subdivided );

				/* offset by projector origin */
				for ( j = 0; j < ( mesh->width * mesh->height ); j++ )
					FUNC12( mesh->verts[ j ].xyz, e->origin, mesh->verts[ j ].xyz );

				/* iterate through the mesh quads */
				for ( y = 0; y < ( mesh->height - 1 ); y++ )
				{
					for ( x = 0; x < ( mesh->width - 1 ); x++ )
					{
						/* set indexes */
						pw[ 0 ] = x + ( y * mesh->width );
						pw[ 1 ] = x + ( ( y + 1 ) * mesh->width );
						pw[ 2 ] = x + 1 + ( ( y + 1 ) * mesh->width );
						pw[ 3 ] = x + 1 + ( y * mesh->width );
						pw[ 4 ] = x + ( y * mesh->width );    /* same as pw[ 0 ] */

						/* set radix */
						r = ( x + y ) & 1;

						/* get drawverts */
						dv[ 0 ] = &mesh->verts[ pw[ r + 0 ] ];
						dv[ 1 ] = &mesh->verts[ pw[ r + 1 ] ];
						dv[ 2 ] = &mesh->verts[ pw[ r + 2 ] ];
						dv[ 3 ] = &mesh->verts[ pw[ r + 3 ] ];

						/* planar? (nuking this optimization as it doesn't work on non-rectangular quads) */
						plane[ 0 ] = 0.0f;  /* stupid msvc */
						if ( 0 && FUNC5( plane, dv[ 0 ]->xyz, dv[ 1 ]->xyz, dv[ 2 ]->xyz ) &&
							 FUNC18( FUNC0( dv[ 1 ]->xyz, plane ) - plane[ 3 ] ) <= PLANAR_EPSILON ) {
							/* make a quad projector */
							FUNC4( p->shaderInfo, projection, distance, 4, dv );
						}
						else
						{
							/* make first triangle */
							FUNC4( p->shaderInfo, projection, distance, 3, dv );

							/* make second triangle */
							dv[ 1 ] = dv[ 2 ];
							dv[ 2 ] = dv[ 3 ];
							FUNC4( p->shaderInfo, projection, distance, 3, dv );
						}
					}
				}

				/* clean up */
				FUNC19( mesh );
			}

			/* remove patch from entity (fixme: leak!) */
			e->patches = p->next;

			/* push patch to worldspawn (enable this to debug projectors) */
			#if 0
			p->next = entities[ 0 ].patches;
			entities[ 0 ].patches = p;
			#endif
		}
	}

	/* emit some stats */
	FUNC10( SYS_VRB, "%9d decal projectors\n", numProjectors );
}