
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef double* vec3_t ;
struct TYPE_6__ {int integer; } ;
struct TYPE_4__ {int smoke2; } ;
struct TYPE_5__ {TYPE_1__ media; } ;


 int CG_LaunchExplode (double*,double*,int ) ;
 double EXP_JUMP ;
 double EXP_VELOCITY ;
 int VectorCopy (double*,double*) ;
 TYPE_3__ cg_blood ;
 TYPE_2__ cgs ;
 double crandom () ;

void CG_BigExplode( vec3_t playerOrigin ) {
 vec3_t origin, velocity;

 if ( !cg_blood.integer ) {
  return;
 }

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*EXP_VELOCITY;
 velocity[1] = crandom()*EXP_VELOCITY;
 velocity[2] = EXP_JUMP + crandom()*EXP_VELOCITY;
 CG_LaunchExplode( origin, velocity, cgs.media.smoke2 );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*EXP_VELOCITY;
 velocity[1] = crandom()*EXP_VELOCITY;
 velocity[2] = EXP_JUMP + crandom()*EXP_VELOCITY;
 CG_LaunchExplode( origin, velocity, cgs.media.smoke2 );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*EXP_VELOCITY*1.5;
 velocity[1] = crandom()*EXP_VELOCITY*1.5;
 velocity[2] = EXP_JUMP + crandom()*EXP_VELOCITY;
 CG_LaunchExplode( origin, velocity, cgs.media.smoke2 );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*EXP_VELOCITY*2.0;
 velocity[1] = crandom()*EXP_VELOCITY*2.0;
 velocity[2] = EXP_JUMP + crandom()*EXP_VELOCITY;
 CG_LaunchExplode( origin, velocity, cgs.media.smoke2 );

 VectorCopy( playerOrigin, origin );
 velocity[0] = crandom()*EXP_VELOCITY*2.5;
 velocity[1] = crandom()*EXP_VELOCITY*2.5;
 velocity[2] = EXP_JUMP + crandom()*EXP_VELOCITY;
 CG_LaunchExplode( origin, velocity, cgs.media.smoke2 );
}
