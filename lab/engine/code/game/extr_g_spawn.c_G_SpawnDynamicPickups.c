
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int flags; } ;
typedef TYPE_1__ gentity_t ;
struct TYPE_5__ {int numSpawnVars; int spawning; scalar_t__ spawnVarChars; scalar_t__** spawnVars; scalar_t__ numSpawnVarChars; } ;


 int FL_DROPPED_ITEM ;
 TYPE_1__* G_SpawnGEntityFromSpawnVars () ;
 int MAX_SPAWN_VARS ;
 int dmlab_clear_dynamic_spawn_entities () ;
 int dmlab_dynamic_spawn_entity_count () ;
 int dmlab_read_dynamic_spawn_entity (int,scalar_t__,scalar_t__*,int**,int*) ;
 TYPE_2__ level ;
 int qfalse ;
 int qtrue ;

void G_SpawnDynamicPickups( void ) {
 gentity_t* ent;
 int i, ent_id, entity_count;
 int spawnVarsOffset[MAX_SPAWN_VARS][2];
 entity_count = dmlab_dynamic_spawn_entity_count();
 if (entity_count == 0) {
  return;
 }

 level.spawning = qtrue;
 level.numSpawnVars = 0;

 for (ent_id = 0; ent_id < entity_count; ++ent_id) {
  level.numSpawnVars = 0;
  level.numSpawnVarChars = 0;

  dmlab_read_dynamic_spawn_entity(
    ent_id,
    level.spawnVarChars,
    &level.numSpawnVarChars,
    spawnVarsOffset,
    &level.numSpawnVars);


  for (i = 0; i < level.numSpawnVars; ++i) {
   level.spawnVars[i][0] = level.spawnVarChars + spawnVarsOffset[i][0];
   level.spawnVars[i][1] = level.spawnVarChars + spawnVarsOffset[i][1];
  }
  ent = G_SpawnGEntityFromSpawnVars();
  if (ent) ent->flags |= FL_DROPPED_ITEM;
 }
 dmlab_clear_dynamic_spawn_entities();
 level.spawning = qfalse;
}
