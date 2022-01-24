#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  vec3_t ;
typedef  void* qhandle_t ;
typedef  scalar_t__ qboolean ;
struct TYPE_6__ {int rotation; float shaderTime; int /*<<< orphan*/  oldorigin; int /*<<< orphan*/  origin; void* customShader; void* hModel; int /*<<< orphan*/ * axis; } ;
struct TYPE_7__ {int startTime; int endTime; double* color; TYPE_1__ refEntity; int /*<<< orphan*/  leType; } ;
typedef  TYPE_2__ localEntity_t ;
struct TYPE_8__ {int time; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  LE_EXPLOSION ; 
 int /*<<< orphan*/  LE_SPRITE_EXPLOSION ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,float) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 TYPE_3__ cg ; 
 int FUNC7 () ; 

localEntity_t *FUNC8( vec3_t origin, vec3_t dir, 
								qhandle_t hModel, qhandle_t shader,
								int msec, qboolean isSprite ) {
	float			ang;
	localEntity_t	*ex;
	int				offset;
	vec3_t			tmpVec, newOrigin;

	if ( msec <= 0 ) {
		FUNC2( "CG_MakeExplosion: msec = %i", msec );
	}

	// skew the time a bit so they aren't all in sync
	offset = FUNC7() & 63;

	ex = FUNC1();
	if ( isSprite ) {
		ex->leType = LE_SPRITE_EXPLOSION;

		// randomly rotate sprite orientation
		ex->refEntity.rotation = FUNC7() % 360;
		FUNC6( dir, 16, tmpVec );
		FUNC4( tmpVec, origin, newOrigin );
	} else {
		ex->leType = LE_EXPLOSION;
		FUNC5( origin, newOrigin );

		// set axis with random rotate
		if ( !dir ) {
			FUNC0( ex->refEntity.axis );
		} else {
			ang = FUNC7() % 360;
			FUNC5( dir, ex->refEntity.axis[0] );
			FUNC3( ex->refEntity.axis, ang );
		}
	}

	ex->startTime = cg.time - offset;
	ex->endTime = ex->startTime + msec;

	// bias the time so all shader effects start correctly
	ex->refEntity.shaderTime = ex->startTime / 1000.0f;

	ex->refEntity.hModel = hModel;
	ex->refEntity.customShader = shader;

	// set origin
	FUNC5( newOrigin, ex->refEntity.origin );
	FUNC5( newOrigin, ex->refEntity.oldorigin );

	ex->color[0] = ex->color[1] = ex->color[2] = 1.0;

	return ex;
}