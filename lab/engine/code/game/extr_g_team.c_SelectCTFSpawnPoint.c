
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef float* vec3_t ;
typedef int team_t ;
typedef int qboolean ;
struct TYPE_6__ {int angles; int origin; } ;
struct TYPE_7__ {float randomAngleRange; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 TYPE_2__* SelectRandomTeamSpawnPoint (int,int ,int ) ;
 TYPE_2__* SelectSpawnPoint (int ,float*,float*,int ) ;
 int VectorCopy (int ,float*) ;
 float random () ;
 int vec3_origin ;

gentity_t *SelectCTFSpawnPoint ( team_t team, int teamstate, vec3_t origin, vec3_t angles, qboolean isbot ) {
 gentity_t *spot;

 spot = SelectRandomTeamSpawnPoint ( teamstate, team, isbot );

 if (!spot) {
  return SelectSpawnPoint( vec3_origin, origin, angles, isbot );
 }

 VectorCopy(spot->s.origin, origin);
 origin[2] += 9.0f;
 VectorCopy(spot->s.angles, angles);
 if ( spot->randomAngleRange == 360.0f ) {
  angles[1] = random() * 360.0f;
 } else {

  float segment = ( random() - 0.5f ) * spot->randomAngleRange;
  angles[1] += segment;
 }

 return spot;
}
