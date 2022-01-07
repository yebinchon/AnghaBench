
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int entity_t ;


 scalar_t__ AAS_AlwaysTriggered (int ) ;
 int SPAWNFLAG_NOT_DEATHMATCH ;
 int ValueForKey (int *,char*) ;
 int atoi (int ) ;
 int * entities ;
 int num_entities ;
 int strcmp (char*,int ) ;
 int strcpy (char*,int ) ;

int AAS_ValidEntity(entity_t *mapent)
{
 int i;
 char target[1024];


 if (mapent == &entities[0])
 {
  return 1;
 }

 else if (!strcmp("func_wall", ValueForKey(mapent, "classname")))
 {


  if (!(atoi(ValueForKey(mapent, "spawnflags")) & SPAWNFLAG_NOT_DEATHMATCH))
  {

   return 1;
  }
 }
 else if (!strcmp("func_door_rotating", ValueForKey(mapent, "classname")))
 {

  if (!(atoi(ValueForKey(mapent, "spawnflags")) & SPAWNFLAG_NOT_DEATHMATCH))
  {

   if (AAS_AlwaysTriggered(ValueForKey(mapent, "targetname")))
   {

    return 1;
   }
  }
 }
 else if (!strcmp("trigger_hurt", ValueForKey(mapent, "classname")))
 {

  return 1;
 }
 else if (!strcmp("trigger_push", ValueForKey(mapent, "classname")))
 {
  return 1;
 }
 else if (!strcmp("trigger_multiple", ValueForKey(mapent, "classname")))
 {

  strcpy(target, ValueForKey(mapent, "target"));
  for (i = 0; i < num_entities; i++)
  {

   if (!strcmp(target, ValueForKey(&entities[i], "targetname")))
   {
    if (!strcmp("target_teleporter", ValueForKey(&entities[i], "classname")))
    {
     return 1;
    }
   }
  }
 }
 else if (!strcmp("trigger_teleport", ValueForKey(mapent, "classname")))
 {
  return 1;
 }
 else if (!strcmp("func_static", ValueForKey(mapent, "classname")))
 {

  return 1;
 }
 else if (!strcmp("func_door", ValueForKey(mapent, "classname")))
 {
  return 1;
 }
 return 0;
}
