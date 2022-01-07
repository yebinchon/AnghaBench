
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {TYPE_3__* entities; } ;
typedef TYPE_2__ worldSector_t ;
struct TYPE_10__ {struct TYPE_10__* nextEntityInWorldSector; TYPE_2__* worldSector; } ;
typedef TYPE_3__ svEntity_t ;
struct TYPE_8__ {int linked; } ;
struct TYPE_11__ {TYPE_1__ r; } ;
typedef TYPE_4__ sharedEntity_t ;


 int Com_Printf (char*) ;
 TYPE_3__* SV_SvEntityForGentity (TYPE_4__*) ;
 int qfalse ;

void SV_UnlinkEntity( sharedEntity_t *gEnt ) {
 svEntity_t *ent;
 svEntity_t *scan;
 worldSector_t *ws;

 ent = SV_SvEntityForGentity( gEnt );

 gEnt->r.linked = qfalse;

 ws = ent->worldSector;
 if ( !ws ) {
  return;
 }
 ent->worldSector = ((void*)0);

 if ( ws->entities == ent ) {
  ws->entities = ent->nextEntityInWorldSector;
  return;
 }

 for ( scan = ws->entities ; scan ; scan = scan->nextEntityInWorldSector ) {
  if ( scan->nextEntityInWorldSector == ent ) {
   scan->nextEntityInWorldSector = ent->nextEntityInWorldSector;
   return;
  }
 }

 Com_Printf( "WARNING: SV_UnlinkEntity: not found in worldSector\n" );
}
