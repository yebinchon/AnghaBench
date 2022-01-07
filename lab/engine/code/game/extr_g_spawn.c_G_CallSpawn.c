
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int (* spawn ) (TYPE_2__*) ;scalar_t__ name; } ;
typedef TYPE_1__ spawn_t ;
typedef int qboolean ;
typedef int gitem_t ;
struct TYPE_8__ {int classname; } ;
typedef TYPE_2__ gentity_t ;


 int * BG_FindItemByClassName (int ) ;
 int G_Printf (char*,...) ;
 int G_SpawnItem (TYPE_2__*,int *) ;
 int qfalse ;
 int qtrue ;
 TYPE_1__* spawns ;
 int strcmp (scalar_t__,int ) ;
 int stub1 (TYPE_2__*) ;

qboolean G_CallSpawn( gentity_t *ent ) {
 spawn_t *s;
 gitem_t *item;

 if ( !ent->classname ) {
  G_Printf ("G_CallSpawn: NULL classname\n");
  return qfalse;
 }


 item = BG_FindItemByClassName( ent->classname );
 if ( item ) {
  G_SpawnItem( ent, item );
  return qtrue;
 }


 for ( s=spawns ; s->name ; s++ ) {
  if ( !strcmp(s->name, ent->classname) ) {

   s->spawn(ent);
   return qtrue;
  }
 }
 G_Printf ("%s doesn't have a spawn function\n", ent->classname);
 return qfalse;
}
