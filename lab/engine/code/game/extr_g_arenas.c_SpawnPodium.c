
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int * vec3_t ;
struct TYPE_11__ {int * trBase; } ;
struct TYPE_12__ {TYPE_2__ apos; int modelindex; TYPE_4__* number; int eType; } ;
struct TYPE_10__ {int currentOrigin; void* contents; } ;
struct TYPE_13__ {char* classname; scalar_t__ nextthink; int think; TYPE_3__ s; TYPE_1__ r; void* clipmask; } ;
typedef TYPE_4__ gentity_t ;
struct TYPE_14__ {scalar_t__ time; int intermission_origin; int intermission_angle; } ;


 int AngleVectors (int ,int *,int *,int *) ;
 void* CONTENTS_SOLID ;
 int ET_GENERAL ;
 int G_ModelIndex (int ) ;
 int G_SetOrigin (TYPE_4__*,int *) ;
 TYPE_4__* G_Spawn () ;
 int PodiumPlacementThink ;
 int SP_PODIUM_MODEL ;
 int VectorMA (int ,scalar_t__,int *,int *) ;
 int VectorSubtract (int ,int ,int *) ;
 size_t YAW ;
 int g_entities ;
 TYPE_6__ level ;
 scalar_t__ trap_Cvar_VariableIntegerValue (char*) ;
 int trap_LinkEntity (TYPE_4__*) ;
 int vectoyaw (int *) ;

__attribute__((used)) static gentity_t *SpawnPodium( void ) {
 gentity_t *podium;
 vec3_t vec;
 vec3_t origin;

 podium = G_Spawn();
 if ( !podium ) {
  return ((void*)0);
 }

 podium->classname = "podium";
 podium->s.eType = ET_GENERAL;
 podium->s.number = podium - g_entities;
 podium->clipmask = CONTENTS_SOLID;
 podium->r.contents = CONTENTS_SOLID;
 podium->s.modelindex = G_ModelIndex( SP_PODIUM_MODEL );

 AngleVectors( level.intermission_angle, vec, ((void*)0), ((void*)0) );
 VectorMA( level.intermission_origin, trap_Cvar_VariableIntegerValue( "g_podiumDist" ), vec, origin );
 origin[2] -= trap_Cvar_VariableIntegerValue( "g_podiumDrop" );
 G_SetOrigin( podium, origin );

 VectorSubtract( level.intermission_origin, podium->r.currentOrigin, vec );
 podium->s.apos.trBase[YAW] = vectoyaw( vec );
 trap_LinkEntity (podium);

 podium->think = PodiumPlacementThink;
 podium->nextthink = level.time + 100;
 return podium;
}
