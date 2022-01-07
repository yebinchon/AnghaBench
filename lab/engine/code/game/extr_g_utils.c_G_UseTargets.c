
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_12__ {int inuse; int (* use ) (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;int target; TYPE_1__* client; int id; scalar_t__ targetShaderNewName; scalar_t__ targetShaderName; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_13__ {double time; } ;
struct TYPE_11__ {int ps; } ;


 int AddRemap (scalar_t__,scalar_t__,float) ;
 int BuildShaderStateConfig () ;
 int CS_SHADERSTATE ;
 int FOFS (int ) ;
 TYPE_2__* G_Find (TYPE_2__*,int ,int ) ;
 int G_Printf (char*) ;
 int dmlab_can_trigger (int ,int ,int *) ;
 scalar_t__ dmlab_override_trigger (int ,int ,int *) ;
 TYPE_6__ level ;
 int stub1 (TYPE_2__*,TYPE_2__*,TYPE_2__*) ;
 int targetname ;
 int trap_SetConfigstring (int ,int ) ;

void G_UseTargets( gentity_t *ent, gentity_t *activator ) {
 gentity_t *t;

 if ( !ent ) {
  return;
 }

 if (ent->targetShaderName && ent->targetShaderNewName) {
  float f = level.time * 0.001;
  AddRemap(ent->targetShaderName, ent->targetShaderNewName, f);
  trap_SetConfigstring(CS_SHADERSTATE, BuildShaderStateConfig());
 }

 if ( !ent->target ) {
  return;
 }

 if ( activator->client &&
   !dmlab_can_trigger( ent->id, ent->target, &activator->client->ps ) ) {
  return;
 }

 if ( activator->client &&
   dmlab_override_trigger( ent->id, ent->target, &activator->client->ps ) ) {
  return;
 }

 t = ((void*)0);
 while ( (t = G_Find (t, FOFS(targetname), ent->target)) != ((void*)0) ) {
  if ( t == ent ) {
   G_Printf ("WARNING: Entity used itself.\n");
  } else {
   if ( t->use ) {
    t->use (t, ent, activator);
   }
  }
  if ( !ent->inuse ) {
   G_Printf("entity was removed while using targets\n");
   return;
  }
 }
}
