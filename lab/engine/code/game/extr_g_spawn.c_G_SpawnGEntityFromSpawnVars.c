
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int currentOrigin; } ;
struct TYPE_12__ {int trBase; } ;
struct TYPE_13__ {int origin; TYPE_1__ pos; } ;
struct TYPE_15__ {TYPE_3__ r; TYPE_2__ s; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_17__ {size_t integer; } ;
struct TYPE_16__ {int numSpawnVars; int ** spawnVars; } ;


 int ADJUST_AREAPORTAL () ;
 size_t GT_FFA ;
 size_t GT_MAX_GAME_TYPE ;
 size_t GT_SINGLE_PLAYER ;
 size_t GT_TEAM ;
 int G_CallSpawn (TYPE_4__*) ;
 int G_FreeEntity (TYPE_4__*) ;
 int G_ParseField (int ,int ,TYPE_4__*) ;
 TYPE_4__* G_Spawn () ;
 int G_SpawnInt (char*,char*,int*) ;
 scalar_t__ G_SpawnString (char*,int *,char**) ;
 int VectorCopy (int ,int ) ;
 TYPE_6__ g_gametype ;
 TYPE_5__ level ;
 char* strstr (char*,char*) ;

gentity_t* G_SpawnGEntityFromSpawnVars( void ) {
 int i;
 gentity_t *ent;
 char *s, *value, *gametypeName;
 static char *gametypeNames[] = {"ffa", "tournament", "single", "team", "ctf", "oneflag", "obelisk", "harvester"};


 ent = G_Spawn();

 for ( i = 0 ; i < level.numSpawnVars ; i++ ) {
  G_ParseField( level.spawnVars[i][0], level.spawnVars[i][1], ent );
 }


 if ( g_gametype.integer == GT_SINGLE_PLAYER ) {
  G_SpawnInt( "notsingle", "0", &i );
  if ( i ) {
   ADJUST_AREAPORTAL();
   G_FreeEntity( ent );
   return ((void*)0);
  }
 }

 if ( g_gametype.integer >= GT_TEAM ) {
  G_SpawnInt( "notteam", "0", &i );
  if ( i ) {
   ADJUST_AREAPORTAL();
   G_FreeEntity( ent );
   return ((void*)0);
  }
 } else {
  G_SpawnInt( "notfree", "0", &i );
  if ( i ) {
   ADJUST_AREAPORTAL();
   G_FreeEntity( ent );
   return ((void*)0);
  }
 }
 G_SpawnInt( "notq3a", "0", &i );
 if ( i ) {
  ADJUST_AREAPORTAL();
  G_FreeEntity( ent );
  return ((void*)0);
 }


 if( G_SpawnString( "gametype", ((void*)0), &value ) ) {
  if( g_gametype.integer >= GT_FFA && g_gametype.integer < GT_MAX_GAME_TYPE ) {
   gametypeName = gametypeNames[g_gametype.integer];

   s = strstr( value, gametypeName );
   if( !s ) {
    ADJUST_AREAPORTAL();
    G_FreeEntity( ent );
    return ((void*)0);
   }
  }
 }


 VectorCopy( ent->s.origin, ent->s.pos.trBase );
 VectorCopy( ent->s.origin, ent->r.currentOrigin );


 if ( !G_CallSpawn( ent ) ) {
  G_FreeEntity( ent );
  return ((void*)0);
 }
 return ent;
}
