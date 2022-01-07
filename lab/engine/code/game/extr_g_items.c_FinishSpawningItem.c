
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_15__ {int* endpos; int entityNum; scalar_t__ startsolid; } ;
typedef TYPE_4__ trace_t ;
struct TYPE_14__ {scalar_t__ contents; int maxs; int mins; } ;
struct TYPE_13__ {int* origin; int eFlags; int groundEntityNum; int number; scalar_t__ modelindex2; TYPE_1__* modelindex; int eType; } ;
struct TYPE_16__ {int spawnflags; int flags; int think; scalar_t__ nextthink; TYPE_3__ r; TYPE_2__ s; TYPE_1__* item; scalar_t__ targetname; int classname; int use; int touch; } ;
typedef TYPE_5__ gentity_t ;
struct TYPE_17__ {scalar_t__ time; } ;
struct TYPE_12__ {scalar_t__ giType; } ;


 scalar_t__ CONTENTS_TRIGGER ;
 int EF_NODRAW ;
 int ET_ITEM ;
 int FL_TEAMSLAVE ;
 int G_FreeEntity (TYPE_5__*) ;
 int G_Printf (char*,int ,int ) ;
 int G_SetOrigin (TYPE_5__*,int*) ;
 int ITEM_RADIUS ;
 scalar_t__ IT_POWERUP ;
 int MASK_SOLID ;
 int RespawnItem ;
 int Touch_Item ;
 int Use_Item ;
 int VectorSet (int ,int,int,int) ;
 int bg_itemlist ;
 int crandom () ;
 TYPE_8__ level ;
 int trap_LinkEntity (TYPE_5__*) ;
 int trap_Trace (TYPE_4__*,int*,int ,int ,int ,int ,int ) ;
 int vtos (int*) ;

void FinishSpawningItem( gentity_t *ent ) {
 trace_t tr;
 vec3_t dest;

 VectorSet( ent->r.mins, -ITEM_RADIUS, -ITEM_RADIUS, -ITEM_RADIUS );
 VectorSet( ent->r.maxs, ITEM_RADIUS, ITEM_RADIUS, ITEM_RADIUS );

 ent->s.eType = ET_ITEM;
 ent->s.modelindex = ent->item - bg_itemlist;
 ent->s.modelindex2 = 0;

 ent->r.contents = CONTENTS_TRIGGER;
 ent->touch = Touch_Item;

 ent->use = Use_Item;

 if ( ent->spawnflags & 1 ) {

  G_SetOrigin( ent, ent->s.origin );
 } else {

  VectorSet( dest, ent->s.origin[0], ent->s.origin[1], ent->s.origin[2] - 4096 );
  trap_Trace( &tr, ent->s.origin, ent->r.mins, ent->r.maxs, dest, ent->s.number, MASK_SOLID );
  if ( tr.startsolid ) {
   G_Printf ("FinishSpawningItem: %s startsolid at %s\n", ent->classname, vtos(ent->s.origin));
   G_FreeEntity( ent );
   return;
  }


  ent->s.groundEntityNum = tr.entityNum;

  G_SetOrigin( ent, tr.endpos );
 }


 if ( ( ent->flags & FL_TEAMSLAVE ) || ent->targetname ) {
  ent->s.eFlags |= EF_NODRAW;
  ent->r.contents = 0;
  return;
 }


 if ( ent->item->giType == IT_POWERUP ) {
  float respawn;

  respawn = 45 + crandom() * 15;
  ent->s.eFlags |= EF_NODRAW;
  ent->r.contents = 0;
  ent->nextthink = level.time + respawn * 1000;
  ent->think = RespawnItem;
  return;
 }


 trap_LinkEntity (ent);
}
