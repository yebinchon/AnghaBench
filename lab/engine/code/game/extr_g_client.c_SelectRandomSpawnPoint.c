
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef float* vec3_t ;
typedef scalar_t__ qboolean ;
struct TYPE_7__ {int angles; int origin; } ;
struct TYPE_8__ {int flags; float randomAngleRange; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int FL_NO_BOTS ;
 int FL_NO_HUMANS ;
 int FOFS (char const*) ;
 TYPE_2__* G_Find (TYPE_2__*,int ,char const*) ;
 scalar_t__ SpotWouldTelefrag (TYPE_2__*) ;
 int VectorCopy (int ,float*) ;
 float random () ;

gentity_t *SelectRandomSpawnPoint(vec3_t origin, vec3_t angles, qboolean isbot) {
 float spot_count = 0;
 gentity_t * spot = ((void*)0);
 gentity_t * best_spot = ((void*)0);
 const char* classname = "info_player_deathmatch";
 while ( ( spot = G_Find( spot, FOFS(classname), classname ) ) != ((void*)0) ) {
  if ( ( (spot->flags & FL_NO_BOTS) && isbot) || ((spot->flags & FL_NO_HUMANS) && !isbot) )
   continue;

  if ( SpotWouldTelefrag( spot ) ) {

   if ( best_spot == ((void*)0) ) {
    best_spot = spot;
   }
   continue;
  }

  spot_count += 1.0f;
  if ( random() * spot_count <= 1.0f ) {
   best_spot = spot;
  }
 }
 if ( best_spot ) {
  VectorCopy(best_spot->s.origin, origin);
  origin[2] += 9.0f;
  VectorCopy(best_spot->s.angles, angles);
  if ( best_spot->randomAngleRange == 360.0f ) {
   angles[1] = random() * 360.0f;
  } else {

   float segment = ( random() - 0.5f ) * best_spot->randomAngleRange;
   angles[1] += segment;
  }
 }
 return best_spot;
}
