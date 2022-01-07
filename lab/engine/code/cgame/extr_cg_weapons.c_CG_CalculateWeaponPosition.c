
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {int vieworg; } ;
struct TYPE_4__ {int bobcycle; float xyspeed; float bobfracsin; double time; int landTime; double landChange; int stepTime; double stepChange; int refdefViewAngles; TYPE_1__ refdef; } ;


 int LAND_DEFLECT_TIME ;
 int LAND_RETURN_TIME ;
 size_t PITCH ;
 size_t ROLL ;
 int STEP_TIME ;
 int VectorCopy (int ,float*) ;
 size_t YAW ;
 TYPE_2__ cg ;
 float sin (double) ;

__attribute__((used)) static void CG_CalculateWeaponPosition( vec3_t origin, vec3_t angles ) {
 float scale;
 int delta;
 float fracsin;

 VectorCopy( cg.refdef.vieworg, origin );
 VectorCopy( cg.refdefViewAngles, angles );


 if ( cg.bobcycle & 1 ) {
  scale = -cg.xyspeed;
 } else {
  scale = cg.xyspeed;
 }


 angles[ROLL] += scale * cg.bobfracsin * 0.005;
 angles[YAW] += scale * cg.bobfracsin * 0.01;
 angles[PITCH] += cg.xyspeed * cg.bobfracsin * 0.005;


 delta = cg.time - cg.landTime;
 if ( delta < LAND_DEFLECT_TIME ) {
  origin[2] += cg.landChange*0.25 * delta / LAND_DEFLECT_TIME;
 } else if ( delta < LAND_DEFLECT_TIME + LAND_RETURN_TIME ) {
  origin[2] += cg.landChange*0.25 *
   (LAND_DEFLECT_TIME + LAND_RETURN_TIME - delta) / LAND_RETURN_TIME;
 }
 scale = cg.xyspeed + 40;
 fracsin = sin( cg.time * 0.001 );
 angles[ROLL] += scale * fracsin * 0.01;
 angles[YAW] += scale * fracsin * 0.01;
 angles[PITCH] += scale * fracsin * 0.01;
}
