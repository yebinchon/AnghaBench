
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_8__ {float x; double w; int h; int y; } ;
typedef TYPE_3__ rectDef_t ;
typedef int qboolean ;
struct TYPE_9__ {float damageTime; float time; float damageX; int headStartYaw; int headEndYaw; int headEndPitch; scalar_t__ headStartTime; scalar_t__ headEndTime; int headStartPitch; TYPE_2__* snap; } ;
struct TYPE_6__ {int clientNum; } ;
struct TYPE_7__ {TYPE_1__ ps; } ;


 int CG_DrawHead (float,int ,double,int ,int ,float*) ;
 float DAMAGE_TIME ;
 int M_PI ;
 size_t PITCH ;
 int VectorClear (float*) ;
 size_t YAW ;
 TYPE_4__ cg ;
 int cos (int) ;
 int crandom () ;
 int random () ;

__attribute__((used)) static void CG_DrawPlayerHead(rectDef_t *rect, qboolean draw2D) {
 vec3_t angles;
 float size, stretch;
 float frac;
 float x = rect->x;

 VectorClear( angles );

 if ( cg.damageTime && cg.time - cg.damageTime < DAMAGE_TIME ) {
  frac = (float)(cg.time - cg.damageTime ) / DAMAGE_TIME;
  size = rect->w * 1.25 * ( 1.5 - frac * 0.5 );

  stretch = size - rect->w * 1.25;

  x -= stretch * 0.5 + cg.damageX * stretch * 0.5;

  cg.headStartYaw = 180 + cg.damageX * 45;

  cg.headEndYaw = 180 + 20 * cos( crandom()*M_PI );
  cg.headEndPitch = 5 * cos( crandom()*M_PI );

  cg.headStartTime = cg.time;
  cg.headEndTime = cg.time + 100 + random() * 2000;
 } else {
  if ( cg.time >= cg.headEndTime ) {

   cg.headStartYaw = cg.headEndYaw;
   cg.headStartPitch = cg.headEndPitch;
   cg.headStartTime = cg.headEndTime;
   cg.headEndTime = cg.time + 100 + random() * 2000;

   cg.headEndYaw = 180 + 20 * cos( crandom()*M_PI );
   cg.headEndPitch = 5 * cos( crandom()*M_PI );
  }
 }


 if ( cg.headStartTime > cg.time ) {
  cg.headStartTime = cg.time;
 }

 frac = ( cg.time - cg.headStartTime ) / (float)( cg.headEndTime - cg.headStartTime );
 frac = frac * frac * ( 3 - 2 * frac );
 angles[YAW] = cg.headStartYaw + ( cg.headEndYaw - cg.headStartYaw ) * frac;
 angles[PITCH] = cg.headStartPitch + ( cg.headEndPitch - cg.headStartPitch ) * frac;

 CG_DrawHead( x, rect->y, rect->w, rect->h, cg.snap->ps.clientNum, angles );
}
