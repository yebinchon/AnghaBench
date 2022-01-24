#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_21__   TYPE_5__ ;
typedef  struct TYPE_20__   TYPE_4__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;

/* Type definitions */
typedef  double* vec3_t ;
typedef  int /*<<< orphan*/  torso ;
struct TYPE_19__ {float x; float y; float width; float height; int fov_x; int fov_y; int time; double* origin; double* lightingOrigin; int renderfx; double* oldorigin; int /*<<< orphan*/  shaderRGBA; scalar_t__ hModel; int /*<<< orphan*/  axis; int /*<<< orphan*/  customSkin; int /*<<< orphan*/  backlerp; int /*<<< orphan*/  frame; int /*<<< orphan*/  oldframe; int /*<<< orphan*/  viewaxis; int /*<<< orphan*/  rdflags; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_2__ refdef_t ;
typedef  int /*<<< orphan*/  refdef ;
typedef  TYPE_2__ refEntity_t ;
struct TYPE_20__ {scalar_t__ pendingWeapon; int weaponTimer; scalar_t__ weapon; scalar_t__ lastWeapon; scalar_t__ currentWeapon; scalar_t__ realWeapon; int muzzleFlashTime; double* flashDlightColor; scalar_t__ chat; scalar_t__ weaponModel; int /*<<< orphan*/  c1RGBA; scalar_t__ flashModel; scalar_t__ barrelModel; scalar_t__ torsoModel; int /*<<< orphan*/  headSkin; scalar_t__ headModel; scalar_t__ legsModel; int /*<<< orphan*/  torsoSkin; int /*<<< orphan*/  legsSkin; TYPE_1__* animations; } ;
typedef  TYPE_4__ playerInfo_t ;
typedef  int /*<<< orphan*/  legs ;
typedef  int /*<<< orphan*/  head ;
typedef  int /*<<< orphan*/  gun ;
typedef  int /*<<< orphan*/  flash ;
typedef  int /*<<< orphan*/  barrel ;
struct TYPE_21__ {float xscale; int yscale; } ;
struct TYPE_18__ {int /*<<< orphan*/  numFrames; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  CHAN_LOCAL ; 
 double FUNC3 (int) ; 
 int M_PI ; 
 size_t PITCH ; 
 int /*<<< orphan*/  RDF_NOWORLDMODEL ; 
 int RF_LIGHTING_ORIGIN ; 
 int RF_NOSHADOW ; 
 size_t ROLL ; 
 int /*<<< orphan*/  FUNC4 (float*,float*,float*,float*) ; 
 double FUNC5 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_4__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_4__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_4__*,double*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,TYPE_2__*,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC11 (double*,double*) ; 
 scalar_t__ WP_BFG ; 
 scalar_t__ WP_GAUNTLET ; 
 scalar_t__ WP_MACHINEGUN ; 
 scalar_t__ WP_NONE ; 
 scalar_t__ WP_NUM_WEAPONS ; 
 scalar_t__ WP_RAILGUN ; 
 size_t YAW ; 
 int FUNC12 (int,float) ; 
 int /*<<< orphan*/  colorWhite ; 
 int dp_realtime ; 
 scalar_t__ jumpHeight ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 
 int FUNC14 () ; 
 float FUNC15 (double) ; 
 int /*<<< orphan*/  FUNC16 (double*,int,double,double,double) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC18 () ; 
 int /*<<< orphan*/  FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__ uis ; 
 int /*<<< orphan*/  weaponChangeSound ; 

void FUNC22( float x, float y, float w, float h, playerInfo_t *pi, int time ) {
	refdef_t		refdef;
	refEntity_t		legs = {0};
	refEntity_t		torso = {0};
	refEntity_t		head = {0};
	refEntity_t		gun = {0};
	refEntity_t		barrel = {0};
	refEntity_t		flash = {0};
	vec3_t			origin;
	int				renderfx;
	vec3_t			mins = {-16, -16, -24};
	vec3_t			maxs = {16, 16, 32};
	float			len;
	float			xx;

	if ( !pi->legsModel || !pi->torsoModel || !pi->headModel || !pi->animations[0].numFrames ) {
		return;
	}

	dp_realtime = time;

	if ( pi->pendingWeapon != WP_NUM_WEAPONS && dp_realtime > pi->weaponTimer ) {
		pi->weapon = pi->pendingWeapon;
		pi->lastWeapon = pi->pendingWeapon;
		pi->pendingWeapon = WP_NUM_WEAPONS;
		pi->weaponTimer = 0;
		if( pi->currentWeapon != pi->weapon ) {
			FUNC21( weaponChangeSound, CHAN_LOCAL );
		}
	}

	FUNC4( &x, &y, &w, &h );

	y -= jumpHeight;

	FUNC13( &refdef, 0, sizeof( refdef ) );
	FUNC13( &legs, 0, sizeof(legs) );
	FUNC13( &torso, 0, sizeof(torso) );
	FUNC13( &head, 0, sizeof(head) );

	refdef.rdflags = RDF_NOWORLDMODEL;

	FUNC1( refdef.viewaxis );

	refdef.x = x;
	refdef.y = y;
	refdef.width = w;
	refdef.height = h;

	refdef.fov_x = (int)((float)refdef.width / uis.xscale / 640.0f * 90.0f);
	xx = refdef.width / uis.xscale / FUNC15( refdef.fov_x / 360 * M_PI );
	refdef.fov_y = FUNC12( refdef.height / uis.yscale, xx );
	refdef.fov_y *= ( 360 / M_PI );

	// calculate distance so the player nearly fills the box
	len = 0.7 * ( maxs[2] - mins[2] );		
	origin[0] = len / FUNC15( FUNC3(refdef.fov_x) * 0.5 );
	origin[1] = 0.5 * ( mins[1] + maxs[1] );
	origin[2] = -0.5 * ( mins[2] + maxs[2] );

	refdef.time = dp_realtime;

	FUNC18();

	// get the rotation information
	FUNC6( pi, legs.axis, torso.axis, head.axis );
	
	// get the animation state (after rotation, to allow feet shuffle)
	FUNC7( pi, &legs.oldframe, &legs.frame, &legs.backlerp,
		 &torso.oldframe, &torso.frame, &torso.backlerp );

	renderfx = RF_LIGHTING_ORIGIN | RF_NOSHADOW;

	//
	// add the legs
	//
	legs.hModel = pi->legsModel;
	legs.customSkin = pi->legsSkin;

	FUNC11( origin, legs.origin );

	FUNC11( origin, legs.lightingOrigin );
	legs.renderfx = renderfx;
	FUNC11 (legs.origin, legs.oldorigin);

	FUNC17( &legs );

	if (!legs.hModel) {
		return;
	}

	//
	// add the torso
	//
	torso.hModel = pi->torsoModel;
	if (!torso.hModel) {
		return;
	}

	torso.customSkin = pi->torsoSkin;

	FUNC11( origin, torso.lightingOrigin );

	FUNC10( &torso, &legs, pi->legsModel, "tag_torso");

	torso.renderfx = renderfx;

	FUNC17( &torso );

	//
	// add the head
	//
	head.hModel = pi->headModel;
	if (!head.hModel) {
		return;
	}
	head.customSkin = pi->headSkin;

	FUNC11( origin, head.lightingOrigin );

	FUNC10( &head, &torso, pi->torsoModel, "tag_head");

	head.renderfx = renderfx;

	FUNC17( &head );

	//
	// add the gun
	//
	if ( pi->currentWeapon != WP_NONE ) {
		FUNC13( &gun, 0, sizeof(gun) );
		gun.hModel = pi->weaponModel;
		if( pi->currentWeapon == WP_RAILGUN ) {
			FUNC2( pi->c1RGBA, gun.shaderRGBA );
		}
		else {
			FUNC2( colorWhite, gun.shaderRGBA );
		}
		FUNC11( origin, gun.lightingOrigin );
		FUNC9( &gun, &torso, pi->torsoModel, "tag_weapon");
		gun.renderfx = renderfx;
		FUNC17( &gun );
	}

	//
	// add the spinning barrel
	//
	if ( pi->realWeapon == WP_MACHINEGUN || pi->realWeapon == WP_GAUNTLET || pi->realWeapon == WP_BFG ) {
		vec3_t	angles;

		FUNC13( &barrel, 0, sizeof(barrel) );
		FUNC11( origin, barrel.lightingOrigin );
		barrel.renderfx = renderfx;

		barrel.hModel = pi->barrelModel;
		angles[YAW] = 0;
		angles[PITCH] = 0;
		angles[ROLL] = FUNC5( pi );
		FUNC0( angles, barrel.axis );

		FUNC10( &barrel, &gun, pi->weaponModel, "tag_barrel");

		FUNC17( &barrel );
	}

	//
	// add muzzle flash
	//
	if ( dp_realtime <= pi->muzzleFlashTime ) {
		if ( pi->flashModel ) {
			FUNC13( &flash, 0, sizeof(flash) );
			flash.hModel = pi->flashModel;
			if( pi->currentWeapon == WP_RAILGUN ) {
				FUNC2( pi->c1RGBA, flash.shaderRGBA );
			}
			else {
				FUNC2( colorWhite, flash.shaderRGBA );
			}
			FUNC11( origin, flash.lightingOrigin );
			FUNC9( &flash, &gun, pi->weaponModel, "tag_flash");
			flash.renderfx = renderfx;
			FUNC17( &flash );
		}

		// make a dlight for the flash
		if ( pi->flashDlightColor[0] || pi->flashDlightColor[1] || pi->flashDlightColor[2] ) {
			FUNC16( flash.origin, 200 + (FUNC14()&31), pi->flashDlightColor[0],
				pi->flashDlightColor[1], pi->flashDlightColor[2] );
		}
	}

	//
	// add the chat icon
	//
	if ( pi->chat ) {
		FUNC8( pi, origin, FUNC19( "sprites/balloon3" ) );
	}

	//
	// add an accent light
	//
	origin[0] -= 100;	// + = behind, - = in front
	origin[1] += 100;	// + = left, - = right
	origin[2] += 100;	// + = above, - = below
	FUNC16( origin, 500, 1.0, 1.0, 1.0 );

	origin[0] -= 100;
	origin[1] -= 100;
	origin[2] -= 100;
	FUNC16( origin, 500, 1.0, 0.0, 0.0 );

	FUNC20( &refdef );
}