#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_9__ ;
typedef  struct TYPE_19__   TYPE_7__ ;
typedef  struct TYPE_18__   TYPE_6__ ;
typedef  struct TYPE_17__   TYPE_5__ ;
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int* vec3_t ;
struct TYPE_14__ {int rdflags; int num_dlights; TYPE_4__* dlights; } ;
typedef  TYPE_2__ trRefdef_t ;
struct TYPE_13__ {int renderfx; int* lightingOrigin; int* origin; int /*<<< orphan*/ * axis; } ;
struct TYPE_15__ {int* ambientLight; int* directedLight; int* lightDir; TYPE_1__ e; void** modelLightDir; int /*<<< orphan*/  ambientLightInt; scalar_t__ lightingCalculated; } ;
typedef  TYPE_3__ trRefEntity_t ;
struct TYPE_16__ {float radius; int* color; int /*<<< orphan*/  origin; } ;
typedef  TYPE_4__ dlight_t ;
typedef  int byte ;
struct TYPE_20__ {scalar_t__ lightGridData; } ;
struct TYPE_19__ {scalar_t__ integer; } ;
struct TYPE_18__ {int (* ftol ) (float) ;} ;
struct TYPE_17__ {int identityLight; int* sunDirection; TYPE_9__* world; } ;

/* Variables and functions */
 float DLIGHT_AT_RADIUS ; 
 float DLIGHT_MINIMUM_RADIUS ; 
 void* FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 float FUNC2 (float,float) ; 
 int RDF_NOWORLDMODEL ; 
 int RF_LIGHTING_ORIGIN ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (int*,int*) ; 
 float FUNC5 (int*) ; 
 int /*<<< orphan*/  FUNC6 (int*,float,int*,int*) ; 
 float FUNC7 (int*) ; 
 int /*<<< orphan*/  FUNC8 (int*,float,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int*,int*) ; 
 scalar_t__ qtrue ; 
 TYPE_7__* r_debugLight ; 
 TYPE_6__ ri ; 
 int FUNC10 (float) ; 
 int FUNC11 (float) ; 
 int FUNC12 (float) ; 
 TYPE_5__ tr ; 

void FUNC13( const trRefdef_t *refdef, trRefEntity_t *ent ) {
	int				i;
	dlight_t		*dl;
	float			power;
	vec3_t			dir;
	float			d;
	vec3_t			lightDir;
	vec3_t			lightOrigin;

	// lighting calculations 
	if ( ent->lightingCalculated ) {
		return;
	}
	ent->lightingCalculated = qtrue;

	//
	// trace a sample point down to find ambient light
	//
	if ( ent->e.renderfx & RF_LIGHTING_ORIGIN ) {
		// separate lightOrigins are needed so an object that is
		// sinking into the ground can still be lit, and so
		// multi-part models can be lit identically
		FUNC4( ent->e.lightingOrigin, lightOrigin );
	} else {
		FUNC4( ent->e.origin, lightOrigin );
	}

	// if NOWORLDMODEL, only use dynamic lights (menu system, etc)
	if ( !(refdef->rdflags & RDF_NOWORLDMODEL ) 
		&& tr.world->lightGridData ) {
		FUNC3( ent, tr.world );
	} else {
		ent->ambientLight[0] = ent->ambientLight[1] = 
			ent->ambientLight[2] = tr.identityLight * 150;
		ent->directedLight[0] = ent->directedLight[1] = 
			ent->directedLight[2] = tr.identityLight * 150;
		FUNC4( tr.sunDirection, ent->lightDir );
	}

	// bonus items and view weapons have a fixed minimum add
	if ( 1 /* ent->e.renderfx & RF_MINLIGHT */ ) {
		// give everything a minimum light add
		ent->ambientLight[0] += tr.identityLight * 32;
		ent->ambientLight[1] += tr.identityLight * 32;
		ent->ambientLight[2] += tr.identityLight * 32;
	}

	//
	// modify the light by dynamic lights
	//
	d = FUNC5( ent->directedLight );
	FUNC8( ent->lightDir, d, lightDir );

	for ( i = 0 ; i < refdef->num_dlights ; i++ ) {
		dl = &refdef->dlights[i];
		FUNC9( dl->origin, lightOrigin, dir );
		d = FUNC7( dir );

		power = DLIGHT_AT_RADIUS * ( dl->radius * dl->radius );
		if ( d < DLIGHT_MINIMUM_RADIUS ) {
			d = DLIGHT_MINIMUM_RADIUS;
		}
		d = power / ( d * d );

		FUNC6( ent->directedLight, d, dl->color, ent->directedLight );
		FUNC6( lightDir, d, dir, lightDir );
	}

	// clamp lights
	// FIXME: old renderer clamps (ambient + NL * directed) per vertex
	//        check if that's worth implementing
	{
		float r, g, b, max;

		r = ent->ambientLight[0];
		g = ent->ambientLight[1];
		b = ent->ambientLight[2];

		max = FUNC2(FUNC2(r, g), b);

		if (max > 255.0f)
		{
			max = 255.0f / max;
			ent->ambientLight[0] *= max;
			ent->ambientLight[1] *= max;
			ent->ambientLight[2] *= max;
		}

		r = ent->directedLight[0];
		g = ent->directedLight[1];
		b = ent->directedLight[2];

		max = FUNC2(FUNC2(r, g), b);

		if (max > 255.0f)
		{
			max = 255.0f / max;
			ent->directedLight[0] *= max;
			ent->directedLight[1] *= max;
			ent->directedLight[2] *= max;
		}
	}


	if ( r_debugLight->integer ) {
		FUNC1( ent );
	}

	// save out the byte packet version
	((byte *)&ent->ambientLightInt)[0] = ri.ftol(ent->ambientLight[0]);
	((byte *)&ent->ambientLightInt)[1] = ri.ftol(ent->ambientLight[1]);
	((byte *)&ent->ambientLightInt)[2] = ri.ftol(ent->ambientLight[2]);
	((byte *)&ent->ambientLightInt)[3] = 0xff;
	
	// transform the direction to local space
	FUNC7( lightDir );
	ent->modelLightDir[0] = FUNC0( lightDir, ent->e.axis[0] );
	ent->modelLightDir[1] = FUNC0( lightDir, ent->e.axis[1] );
	ent->modelLightDir[2] = FUNC0( lightDir, ent->e.axis[2] );

	FUNC4(lightDir, ent->lightDir);
}