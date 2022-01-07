
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_6__ {int origin; } ;
struct TYPE_7__ {TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int FOFS (int ) ;
 TYPE_2__* G_Find (TYPE_2__*,int ,char*) ;
 float VectorLength (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int classname ;

gentity_t *SelectNearestDeathmatchSpawnPoint( vec3_t from ) {
 gentity_t *spot;
 vec3_t delta;
 float dist, nearestDist;
 gentity_t *nearestSpot;

 nearestDist = 999999;
 nearestSpot = ((void*)0);
 spot = ((void*)0);

 while ((spot = G_Find (spot, FOFS(classname), "info_player_deathmatch")) != ((void*)0)) {

  VectorSubtract( spot->s.origin, from, delta );
  dist = VectorLength( delta );
  if ( dist < nearestDist ) {
   nearestDist = dist;
   nearestSpot = spot;
  }
 }

 return nearestSpot;
}
