#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
struct TYPE_12__ {int /*<<< orphan*/  lm; int /*<<< orphan*/  maxs; int /*<<< orphan*/  mins; TYPE_2__* si; } ;
typedef  TYPE_1__ surfaceInfo_t ;
struct TYPE_13__ {float skyLightValue; int value; float lightSubdivide; int /*<<< orphan*/  lightStyle; int /*<<< orphan*/  color; scalar_t__ autosprite; int /*<<< orphan*/  lightFilterRadius; int /*<<< orphan*/  skyLightIterations; int /*<<< orphan*/  shader; int /*<<< orphan*/ * sun; } ;
typedef  TYPE_2__ shaderInfo_t ;
struct TYPE_14__ {int photons; float fade; int /*<<< orphan*/  style; int /*<<< orphan*/  falloffTolerance; int /*<<< orphan*/  color; int /*<<< orphan*/  origin; TYPE_2__* si; int /*<<< orphan*/  type; int /*<<< orphan*/  flags; struct TYPE_14__* next; } ;
typedef  TYPE_3__ light_t ;
typedef  int /*<<< orphan*/  clipWork_t ;
struct TYPE_15__ {int surfaceType; } ;
typedef  TYPE_4__ bspDrawSurface_t ;

/* Variables and functions */
 int /*<<< orphan*/  APPROX_BOUNCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  EMIT_POINT ; 
 int /*<<< orphan*/  LIGHT_Q3A_DEFAULT ; 
#define  MST_PATCH 130 
#define  MST_PLANAR 129 
#define  MST_TRIANGLE_SOUP 128 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,float,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SYS_VRB ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 char* FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,float,int /*<<< orphan*/ ) ; 
 TYPE_4__* bspDrawSurfaces ; 
 float defaultLightSubdivide ; 
 int /*<<< orphan*/ * entities ; 
 int /*<<< orphan*/  falloffTolerance ; 
 TYPE_3__* lights ; 
 int /*<<< orphan*/  FUNC9 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int numBSPDrawSurfaces ; 
 int /*<<< orphan*/  numPointLights ; 
 int pointScale ; 
 TYPE_3__* FUNC10 (int) ; 
 TYPE_1__* surfaceInfos ; 

void FUNC11( void ){
	int i;
	bspDrawSurface_t    *ds;
	surfaceInfo_t       *info;
	shaderInfo_t        *si;
	light_t             *light;
	float subdivide;
	vec3_t origin;
	clipWork_t cw;
	const char          *nss;


	/* get sun shader supressor */
	nss = FUNC5( &entities[ 0 ], "_noshadersun" );

	/* walk the list of surfaces */
	for ( i = 0; i < numBSPDrawSurfaces; i++ )
	{
		/* get surface and other bits */
		ds = &bspDrawSurfaces[ i ];
		info = &surfaceInfos[ i ];
		si = info->si;

		/* sunlight? */
		if ( si->sun != NULL && nss[ 0 ] != '1' ) {
			FUNC4( SYS_VRB, "Sun: %s\n", si->shader );
			FUNC1( si->sun );
			si->sun = NULL; /* FIXME: leak! */
		}

		/* sky light? */
		if ( si->skyLightValue > 0.0f ) {
			FUNC4( SYS_VRB, "Sky: %s\n", si->shader );
			FUNC0( si->color, si->skyLightValue, si->skyLightIterations, si->lightFilterRadius, si->lightStyle );
			si->skyLightValue = 0.0f;   /* FIXME: hack! */
		}

		/* try to early out */
		if ( si->value <= 0 ) {
			continue;
		}

		/* autosprite shaders become point lights */
		if ( si->autosprite ) {
			/* create an average xyz */
			FUNC6( info->mins, info->maxs, origin );
			FUNC8( origin, 0.5f, origin );

			/* create a light */
			light = FUNC10( sizeof( *light ) );
			FUNC9( light, 0, sizeof( *light ) );
			light->next = lights;
			lights = light;

			/* set it up */
			light->flags = LIGHT_Q3A_DEFAULT;
			light->type = EMIT_POINT;
			light->photons = si->value * pointScale;
			light->fade = 1.0f;
			light->si = si;
			FUNC7( origin, light->origin );
			FUNC7( si->color, light->color );
			light->falloffTolerance = falloffTolerance;
			light->style = si->lightStyle;

			/* add to point light count and continue */
			numPointLights++;
			continue;
		}

		/* get subdivision amount */
		if ( si->lightSubdivide > 0 ) {
			subdivide = si->lightSubdivide;
		}
		else{
			subdivide = defaultLightSubdivide;
		}

		/* switch on type */
		switch ( ds->surfaceType )
		{
		case MST_PLANAR:
		case MST_TRIANGLE_SOUP:
			FUNC3( i, 0, info->lm, si, APPROX_BOUNCE, subdivide, &cw );
			break;

		case MST_PATCH:
			FUNC2( i, 0, info->lm, si, APPROX_BOUNCE, subdivide, &cw );
			break;

		default:
			break;
		}
	}
}