
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef double* vec3_t ;
typedef int torso ;
struct TYPE_19__ {float x; float y; float width; float height; int fov_x; int fov_y; int time; double* origin; double* lightingOrigin; int renderfx; double* oldorigin; int shaderRGBA; scalar_t__ hModel; int axis; int customSkin; int backlerp; int frame; int oldframe; int viewaxis; int rdflags; int member_0; } ;
typedef TYPE_2__ refdef_t ;
typedef int refdef ;
typedef TYPE_2__ refEntity_t ;
struct TYPE_20__ {scalar_t__ pendingWeapon; int weaponTimer; scalar_t__ weapon; scalar_t__ lastWeapon; scalar_t__ currentWeapon; scalar_t__ realWeapon; int muzzleFlashTime; double* flashDlightColor; scalar_t__ chat; scalar_t__ weaponModel; int c1RGBA; scalar_t__ flashModel; scalar_t__ barrelModel; scalar_t__ torsoModel; int headSkin; scalar_t__ headModel; scalar_t__ legsModel; int torsoSkin; int legsSkin; TYPE_1__* animations; } ;
typedef TYPE_4__ playerInfo_t ;
typedef int legs ;
typedef int head ;
typedef int gun ;
typedef int flash ;
typedef int barrel ;
struct TYPE_21__ {float xscale; int yscale; } ;
struct TYPE_18__ {int numFrames; } ;


 int AnglesToAxis (double*,int ) ;
 int AxisClear (int ) ;
 int Byte4Copy (int ,int ) ;
 int CHAN_LOCAL ;
 double DEG2RAD (int) ;
 int M_PI ;
 size_t PITCH ;
 int RDF_NOWORLDMODEL ;
 int RF_LIGHTING_ORIGIN ;
 int RF_NOSHADOW ;
 size_t ROLL ;
 int UI_AdjustFrom640 (float*,float*,float*,float*) ;
 double UI_MachinegunSpinAngle (TYPE_4__*) ;
 int UI_PlayerAngles (TYPE_4__*,int ,int ,int ) ;
 int UI_PlayerAnimation (TYPE_4__*,int *,int *,int *,int *,int *,int *) ;
 int UI_PlayerFloatSprite (TYPE_4__*,double*,int ) ;
 int UI_PositionEntityOnTag (TYPE_2__*,TYPE_2__*,scalar_t__,char*) ;
 int UI_PositionRotatedEntityOnTag (TYPE_2__*,TYPE_2__*,scalar_t__,char*) ;
 int VectorCopy (double*,double*) ;
 scalar_t__ WP_BFG ;
 scalar_t__ WP_GAUNTLET ;
 scalar_t__ WP_MACHINEGUN ;
 scalar_t__ WP_NONE ;
 scalar_t__ WP_NUM_WEAPONS ;
 scalar_t__ WP_RAILGUN ;
 size_t YAW ;
 int atan2 (int,float) ;
 int colorWhite ;
 int dp_realtime ;
 scalar_t__ jumpHeight ;
 int memset (TYPE_2__*,int ,int) ;
 int rand () ;
 float tan (double) ;
 int trap_R_AddLightToScene (double*,int,double,double,double) ;
 int trap_R_AddRefEntityToScene (TYPE_2__*) ;
 int trap_R_ClearScene () ;
 int trap_R_RegisterShaderNoMip (char*) ;
 int trap_R_RenderScene (TYPE_2__*) ;
 int trap_S_StartLocalSound (int ,int ) ;
 TYPE_5__ uis ;
 int weaponChangeSound ;

void UI_DrawPlayer( float x, float y, float w, float h, playerInfo_t *pi, int time ) {
 refdef_t refdef;
 refEntity_t legs = {0};
 refEntity_t torso = {0};
 refEntity_t head = {0};
 refEntity_t gun = {0};
 refEntity_t barrel = {0};
 refEntity_t flash = {0};
 vec3_t origin;
 int renderfx;
 vec3_t mins = {-16, -16, -24};
 vec3_t maxs = {16, 16, 32};
 float len;
 float xx;

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
   trap_S_StartLocalSound( weaponChangeSound, CHAN_LOCAL );
  }
 }

 UI_AdjustFrom640( &x, &y, &w, &h );

 y -= jumpHeight;

 memset( &refdef, 0, sizeof( refdef ) );
 memset( &legs, 0, sizeof(legs) );
 memset( &torso, 0, sizeof(torso) );
 memset( &head, 0, sizeof(head) );

 refdef.rdflags = RDF_NOWORLDMODEL;

 AxisClear( refdef.viewaxis );

 refdef.x = x;
 refdef.y = y;
 refdef.width = w;
 refdef.height = h;

 refdef.fov_x = (int)((float)refdef.width / uis.xscale / 640.0f * 90.0f);
 xx = refdef.width / uis.xscale / tan( refdef.fov_x / 360 * M_PI );
 refdef.fov_y = atan2( refdef.height / uis.yscale, xx );
 refdef.fov_y *= ( 360 / M_PI );


 len = 0.7 * ( maxs[2] - mins[2] );
 origin[0] = len / tan( DEG2RAD(refdef.fov_x) * 0.5 );
 origin[1] = 0.5 * ( mins[1] + maxs[1] );
 origin[2] = -0.5 * ( mins[2] + maxs[2] );

 refdef.time = dp_realtime;

 trap_R_ClearScene();


 UI_PlayerAngles( pi, legs.axis, torso.axis, head.axis );


 UI_PlayerAnimation( pi, &legs.oldframe, &legs.frame, &legs.backlerp,
   &torso.oldframe, &torso.frame, &torso.backlerp );

 renderfx = RF_LIGHTING_ORIGIN | RF_NOSHADOW;




 legs.hModel = pi->legsModel;
 legs.customSkin = pi->legsSkin;

 VectorCopy( origin, legs.origin );

 VectorCopy( origin, legs.lightingOrigin );
 legs.renderfx = renderfx;
 VectorCopy (legs.origin, legs.oldorigin);

 trap_R_AddRefEntityToScene( &legs );

 if (!legs.hModel) {
  return;
 }




 torso.hModel = pi->torsoModel;
 if (!torso.hModel) {
  return;
 }

 torso.customSkin = pi->torsoSkin;

 VectorCopy( origin, torso.lightingOrigin );

 UI_PositionRotatedEntityOnTag( &torso, &legs, pi->legsModel, "tag_torso");

 torso.renderfx = renderfx;

 trap_R_AddRefEntityToScene( &torso );




 head.hModel = pi->headModel;
 if (!head.hModel) {
  return;
 }
 head.customSkin = pi->headSkin;

 VectorCopy( origin, head.lightingOrigin );

 UI_PositionRotatedEntityOnTag( &head, &torso, pi->torsoModel, "tag_head");

 head.renderfx = renderfx;

 trap_R_AddRefEntityToScene( &head );




 if ( pi->currentWeapon != WP_NONE ) {
  memset( &gun, 0, sizeof(gun) );
  gun.hModel = pi->weaponModel;
  if( pi->currentWeapon == WP_RAILGUN ) {
   Byte4Copy( pi->c1RGBA, gun.shaderRGBA );
  }
  else {
   Byte4Copy( colorWhite, gun.shaderRGBA );
  }
  VectorCopy( origin, gun.lightingOrigin );
  UI_PositionEntityOnTag( &gun, &torso, pi->torsoModel, "tag_weapon");
  gun.renderfx = renderfx;
  trap_R_AddRefEntityToScene( &gun );
 }




 if ( pi->realWeapon == WP_MACHINEGUN || pi->realWeapon == WP_GAUNTLET || pi->realWeapon == WP_BFG ) {
  vec3_t angles;

  memset( &barrel, 0, sizeof(barrel) );
  VectorCopy( origin, barrel.lightingOrigin );
  barrel.renderfx = renderfx;

  barrel.hModel = pi->barrelModel;
  angles[YAW] = 0;
  angles[PITCH] = 0;
  angles[ROLL] = UI_MachinegunSpinAngle( pi );
  AnglesToAxis( angles, barrel.axis );

  UI_PositionRotatedEntityOnTag( &barrel, &gun, pi->weaponModel, "tag_barrel");

  trap_R_AddRefEntityToScene( &barrel );
 }




 if ( dp_realtime <= pi->muzzleFlashTime ) {
  if ( pi->flashModel ) {
   memset( &flash, 0, sizeof(flash) );
   flash.hModel = pi->flashModel;
   if( pi->currentWeapon == WP_RAILGUN ) {
    Byte4Copy( pi->c1RGBA, flash.shaderRGBA );
   }
   else {
    Byte4Copy( colorWhite, flash.shaderRGBA );
   }
   VectorCopy( origin, flash.lightingOrigin );
   UI_PositionEntityOnTag( &flash, &gun, pi->weaponModel, "tag_flash");
   flash.renderfx = renderfx;
   trap_R_AddRefEntityToScene( &flash );
  }


  if ( pi->flashDlightColor[0] || pi->flashDlightColor[1] || pi->flashDlightColor[2] ) {
   trap_R_AddLightToScene( flash.origin, 200 + (rand()&31), pi->flashDlightColor[0],
    pi->flashDlightColor[1], pi->flashDlightColor[2] );
  }
 }




 if ( pi->chat ) {
  UI_PlayerFloatSprite( pi, origin, trap_R_RegisterShaderNoMip( "sprites/balloon3" ) );
 }




 origin[0] -= 100;
 origin[1] += 100;
 origin[2] += 100;
 trap_R_AddLightToScene( origin, 500, 1.0, 1.0, 1.0 );

 origin[0] -= 100;
 origin[1] -= 100;
 origin[2] -= 100;
 trap_R_AddLightToScene( origin, 500, 1.0, 0.0, 0.0 );

 trap_R_RenderScene( &refdef );
}
