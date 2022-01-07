
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_5__ {int origin; } ;
struct TYPE_6__ {scalar_t__ client; TYPE_1__ s; } ;
typedef TYPE_2__ gentity_t ;


 int MAX_GENTITIES ;
 int VectorAdd (int ,int ,int ) ;
 TYPE_2__* g_entities ;
 int playerMaxs ;
 int playerMins ;
 int qfalse ;
 int qtrue ;
 int trap_EntitiesInBox (int ,int ,int*,int) ;

qboolean SpotWouldTelefrag( gentity_t *spot ) {
 int i, num;
 int touch[MAX_GENTITIES];
 gentity_t *hit;
 vec3_t mins, maxs;

 VectorAdd( spot->s.origin, playerMins, mins );
 VectorAdd( spot->s.origin, playerMaxs, maxs );
 num = trap_EntitiesInBox( mins, maxs, touch, MAX_GENTITIES );

 for (i=0 ; i<num ; i++) {
  hit = &g_entities[touch[i]];

  if ( hit->client) {
   return qtrue;
  }

 }

 return qfalse;
}
