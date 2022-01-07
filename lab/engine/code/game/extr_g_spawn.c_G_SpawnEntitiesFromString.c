
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int numSpawnVars; int** spawnVars; int spawnVarChars; int spawning; scalar_t__ numSpawnVarChars; } ;


 int G_Error (char*) ;
 scalar_t__ G_ParseSpawnVars () ;
 int G_SpawnGEntityFromSpawnVars () ;
 int MAX_SPAWN_VARS ;
 int SP_worldspawn () ;
 int dmlab_make_extra_entities () ;
 int dmlab_read_extra_entity (int,int,scalar_t__*,int**,int*) ;
 int dmlab_update_spawn_vars (int,scalar_t__*,int**,int*) ;
 TYPE_1__ level ;
 int qfalse ;
 int qtrue ;

void G_SpawnEntitiesFromString( void ) {

 int i, ent_id, extra_spawn_count;
 int spawnVarsOffset[MAX_SPAWN_VARS][2];
 level.spawning = qtrue;
 level.numSpawnVars = 0;




 if ( !G_ParseSpawnVars() ) {
  G_Error( "SpawnEntities: no entities" );
 }
 SP_worldspawn();


 while( G_ParseSpawnVars() ) {

  for (i = 0; i < level.numSpawnVars; ++i) {
   spawnVarsOffset[i][0] = level.spawnVars[i][0] - level.spawnVarChars;
   spawnVarsOffset[i][1] = level.spawnVars[i][1] - level.spawnVarChars;
  }


  if (!dmlab_update_spawn_vars(
    level.spawnVarChars,
    &level.numSpawnVarChars,
    spawnVarsOffset,
    &level.numSpawnVars)) {
   continue;
  }

  for (i = 0; i < level.numSpawnVars; ++i) {
   level.spawnVars[i][0] = level.spawnVarChars + spawnVarsOffset[i][0];
   level.spawnVars[i][1] = level.spawnVarChars + spawnVarsOffset[i][1];
  }
  G_SpawnGEntityFromSpawnVars();
 }
 extra_spawn_count = dmlab_make_extra_entities();
 for (ent_id = 0; ent_id < extra_spawn_count; ++ent_id) {
  level.numSpawnVars = 0;
  level.numSpawnVarChars = 0;

  dmlab_read_extra_entity(
    ent_id,
    level.spawnVarChars,
    &level.numSpawnVarChars,
    spawnVarsOffset,
    &level.numSpawnVars);


  for (i = 0; i < level.numSpawnVars; ++i) {
   level.spawnVars[i][0] = level.spawnVarChars + spawnVarsOffset[i][0];
   level.spawnVars[i][1] = level.spawnVarChars + spawnVarsOffset[i][1];
  }
  G_SpawnGEntityFromSpawnVars();
 }

 level.spawning = qfalse;
}
