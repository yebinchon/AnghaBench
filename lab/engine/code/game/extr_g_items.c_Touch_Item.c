
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_46__ TYPE_9__ ;
typedef struct TYPE_45__ TYPE_8__ ;
typedef struct TYPE_44__ TYPE_6__ ;
typedef struct TYPE_43__ TYPE_5__ ;
typedef struct TYPE_42__ TYPE_4__ ;
typedef struct TYPE_41__ TYPE_3__ ;
typedef struct TYPE_40__ TYPE_37__ ;
typedef struct TYPE_39__ TYPE_2__ ;
typedef struct TYPE_38__ TYPE_1__ ;


typedef int trace_t ;
typedef scalar_t__ qboolean ;
struct TYPE_43__ {scalar_t__ contents; int svFlags; int singleClient; } ;
struct TYPE_42__ {int trBase; } ;
struct TYPE_40__ {int eFlags; int number; int modelindex; int eventParm; TYPE_4__ pos; } ;
struct TYPE_44__ {int health; int wait; int random; int flags; scalar_t__ think; scalar_t__ nextthink; TYPE_5__ r; TYPE_37__ s; void* freeAfterEvent; void* unlinkAfterEvent; int speed; TYPE_3__* item; TYPE_2__* client; int id; } ;
typedef TYPE_6__ gentity_t ;
struct TYPE_46__ {int integer; } ;
struct TYPE_45__ {scalar_t__ time; } ;
struct TYPE_41__ {int giType; int classname; } ;
struct TYPE_38__ {scalar_t__ predictItemPickup; } ;
struct TYPE_39__ {int ps; TYPE_1__ pers; } ;


 int BG_CanItemBeGrabbed (int ,TYPE_37__*,int *) ;
 int EF_NODRAW ;
 int EV_GLOBAL_ITEM_PICKUP ;
 int EV_ITEM_PICKUP ;
 int FL_DROPPED_ITEM ;
 int G_AddEvent (TYPE_6__*,int ,int ) ;
 int G_AddPredictableEvent (TYPE_6__*,int ,int ) ;
 int G_LogPrintf (char*,int ,int ) ;
 TYPE_6__* G_TempEntity (int ,int ) ;
 int G_UseTargets (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Ammo (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Armor (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Goal (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Health (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Holdable (TYPE_6__*,TYPE_6__*) ;
 int Pickup_PersistantPowerup (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Powerup (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Reward (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Team (TYPE_6__*,TYPE_6__*) ;
 int Pickup_Weapon (TYPE_6__*,TYPE_6__*) ;
 scalar_t__ RespawnItem ;
 int SVF_BROADCAST ;
 int SVF_NOCLIENT ;
 int SVF_SINGLECLIENT ;
 int crandom () ;
 int dmlab_override_pickup (int ,int*,int *) ;
 TYPE_9__ g_gametype ;
 TYPE_8__ level ;
 scalar_t__ qfalse ;
 void* qtrue ;
 int trap_LinkEntity (TYPE_6__*) ;

void Touch_Item (gentity_t *ent, gentity_t *other, trace_t *trace) {
 int respawn;
 qboolean predict;

 if (!other->client)
  return;
 if (other->health < 1)
  return;


 if ( !BG_CanItemBeGrabbed( g_gametype.integer, &ent->s, &other->client->ps ) ) {
  return;
 }

 G_LogPrintf( "Item: %i %s\n", other->s.number, ent->item->classname );

 predict = other->client->pers.predictItemPickup;

 respawn = -1;
 if (!ent->id || !dmlab_override_pickup(ent->id, &respawn, &other->client->ps )) {

  switch( ent->item->giType ) {
  case 128:
   respawn = Pickup_Weapon(ent, other);

   break;
  case 137:
   respawn = Pickup_Ammo(ent, other);

   break;
  case 136:
   respawn = Pickup_Armor(ent, other);
   break;
  case 134:
   respawn = Pickup_Health(ent, other);
   break;
  case 131:
   respawn = Pickup_Powerup(ent, other);
   predict = qfalse;
   break;





  case 129:
   respawn = Pickup_Team(ent, other);
   break;
  case 133:
   respawn = Pickup_Holdable(ent, other);
   break;
  case 130:
   respawn = Pickup_Reward(ent, other);
   break;
  case 135:
   respawn = Pickup_Goal(ent, other);
   break;
  default:
   return;
  }
 }

 if ( !respawn ) {
  return;
 }


 if (predict) {
  G_AddPredictableEvent( other, EV_ITEM_PICKUP, ent->s.modelindex );
 } else {
  G_AddEvent( other, EV_ITEM_PICKUP, ent->s.modelindex );
 }


 if ( ent->item->giType == 131 || ent->item->giType == 129) {

  if (!ent->speed) {
   gentity_t *te;

   te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_ITEM_PICKUP );
   te->s.eventParm = ent->s.modelindex;
   te->r.svFlags |= SVF_BROADCAST;
  } else {
   gentity_t *te;

   te = G_TempEntity( ent->s.pos.trBase, EV_GLOBAL_ITEM_PICKUP );
   te->s.eventParm = ent->s.modelindex;

   te->r.svFlags |= SVF_SINGLECLIENT;
   te->r.singleClient = other->s.number;
  }
 }


 G_UseTargets (ent, other);


 if ( ent->wait == -1 ) {
  ent->r.svFlags |= SVF_NOCLIENT;
  ent->s.eFlags |= EF_NODRAW;
  ent->r.contents = 0;
  ent->unlinkAfterEvent = qtrue;
  return;
 }


 if ( ent->wait ) {
  respawn = ent->wait;
 }


 if ( ent->random ) {
  respawn += crandom() * ent->random;
  if ( respawn < 1 ) {
   respawn = 1;
  }
 }


 if ( ent->flags & FL_DROPPED_ITEM ) {
  ent->freeAfterEvent = qtrue;
 }




 ent->r.svFlags |= SVF_NOCLIENT;
 ent->s.eFlags |= EF_NODRAW;
 ent->r.contents = 0;





 if ( respawn <= 0 ) {
  ent->nextthink = 0;
  ent->think = 0;
 } else {
  ent->nextthink = level.time + respawn * 1000;
  ent->think = RespawnItem;
 }
 trap_LinkEntity( ent );
}
