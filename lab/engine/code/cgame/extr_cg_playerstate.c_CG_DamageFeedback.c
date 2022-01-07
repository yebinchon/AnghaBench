
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_6__ {int * viewaxis; } ;
struct TYPE_8__ {float damageX; float damageY; float v_dmg_roll; float v_dmg_pitch; float damageValue; TYPE_3__* snap; int damageTime; scalar_t__ time; scalar_t__ v_dmg_time; TYPE_2__ refdef; scalar_t__ attackerTime; } ;
struct TYPE_5__ {int* stats; } ;
struct TYPE_7__ {int serverTime; TYPE_1__ ps; } ;


 int AngleVectors (float*,float*,int *,int *) ;
 scalar_t__ DAMAGE_TIME ;
 float DotProduct (float*,int ) ;
 size_t PITCH ;
 size_t ROLL ;
 size_t STAT_HEALTH ;
 float VectorLength (float*) ;
 int VectorSubtract (int ,float*,float*) ;
 size_t YAW ;
 TYPE_4__ cg ;
 int vec3_origin ;

void CG_DamageFeedback( int yawByte, int pitchByte, int damage ) {
 float left, front, up;
 float kick;
 int health;
 float scale;
 vec3_t dir;
 vec3_t angles;
 float dist;
 float yaw, pitch;


 cg.attackerTime = cg.time;


 health = cg.snap->ps.stats[STAT_HEALTH];
 if ( health < 40 ) {
  scale = 1;
 } else {
  scale = 40.0 / health;
 }
 kick = damage * scale;

 if (kick < 5)
  kick = 5;
 if (kick > 10)
  kick = 10;


 if ( yawByte == 255 && pitchByte == 255 ) {
  cg.damageX = 0;
  cg.damageY = 0;
  cg.v_dmg_roll = 0;
  cg.v_dmg_pitch = -kick;
 } else {

  pitch = pitchByte / 255.0 * 360;
  yaw = yawByte / 255.0 * 360;

  angles[PITCH] = pitch;
  angles[YAW] = yaw;
  angles[ROLL] = 0;

  AngleVectors( angles, dir, ((void*)0), ((void*)0) );
  VectorSubtract( vec3_origin, dir, dir );

  front = DotProduct (dir, cg.refdef.viewaxis[0] );
  left = DotProduct (dir, cg.refdef.viewaxis[1] );
  up = DotProduct (dir, cg.refdef.viewaxis[2] );

  dir[0] = front;
  dir[1] = left;
  dir[2] = 0;
  dist = VectorLength( dir );
  if ( dist < 0.1 ) {
   dist = 0.1f;
  }

  cg.v_dmg_roll = kick * left;

  cg.v_dmg_pitch = -kick * front;

  if ( front <= 0.1 ) {
   front = 0.1f;
  }
  cg.damageX = -left / front;
  cg.damageY = up / dist;
 }


 if ( cg.damageX > 1.0 ) {
  cg.damageX = 1.0;
 }
 if ( cg.damageX < - 1.0 ) {
  cg.damageX = -1.0;
 }

 if ( cg.damageY > 1.0 ) {
  cg.damageY = 1.0;
 }
 if ( cg.damageY < - 1.0 ) {
  cg.damageY = -1.0;
 }


 if ( kick > 10 ) {
  kick = 10;
 }
 cg.damageValue = kick;
 cg.v_dmg_time = cg.time + DAMAGE_TIME;
 cg.damageTime = cg.snap->serverTime;
}
