
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int qboolean ;
struct TYPE_8__ {int* ammo; size_t* stats; int * powerups; int * persistant; } ;
typedef TYPE_1__ playerState_t ;
struct TYPE_9__ {int giType; size_t giTag; int quantity; } ;
typedef TYPE_2__ gitem_t ;
struct TYPE_10__ {int modelindex; int generic1; int modelindex2; scalar_t__ id; } ;
typedef TYPE_3__ entityState_t ;


 int Com_Error (int ,char*) ;
 int Com_Printf (char*,int) ;
 int ERR_DROP ;
 int GT_1FCTF ;
 int GT_CTF ;
 int GT_HARVESTER ;
 size_t PERS_TEAM ;
 size_t PW_BLUEFLAG ;
 size_t PW_GUARD ;
 size_t PW_NEUTRALFLAG ;
 size_t PW_REDFLAG ;
 size_t PW_SCOUT ;
 size_t STAT_ARMOR ;
 size_t STAT_HEALTH ;
 size_t STAT_HOLDABLE_ITEM ;
 size_t STAT_MAX_HEALTH ;
 size_t STAT_PERSISTANT_POWERUP ;
 int TEAM_BLUE ;
 int TEAM_RED ;
 TYPE_2__* bg_itemlist ;
 int bg_numItems ;
 int dmlab_can_pickup (scalar_t__,TYPE_1__ const*) ;
 int qfalse ;
 int qtrue ;

qboolean BG_CanItemBeGrabbed( int gametype, const entityState_t *ent, const playerState_t *ps ) {
 gitem_t *item;



 qboolean can_pickup = qtrue;

 if ( ent->modelindex < 1 || ent->modelindex >= bg_numItems ) {
  Com_Error( ERR_DROP, "BG_CanItemBeGrabbed: index out of range" );
 }

 item = &bg_itemlist[ent->modelindex];



 if ( ent->id ) {
  can_pickup = dmlab_can_pickup( ent->id, ps );
 }

 switch( item->giType ) {
 case 128:
  return can_pickup;

 case 138:
  if ( ps->ammo[ item->giTag ] >= 200 ) {
   return qfalse;
  }
  return can_pickup;

 case 137:
  if ( ps->stats[STAT_ARMOR] >= ps->stats[STAT_MAX_HEALTH] * 2 ) {
   return qfalse;
  }

  return can_pickup;

 case 134:







  if ( item->quantity == 5 || item->quantity == 100 ) {
   if ( ps->stats[STAT_HEALTH] >= ps->stats[STAT_MAX_HEALTH] * 2 ) {
    return qfalse;
   }
   return can_pickup;
  }

  if ( ps->stats[STAT_HEALTH] >= ps->stats[STAT_MAX_HEALTH] ) {
   return qfalse;
  }
  return can_pickup;

 case 131:
  return can_pickup;
 case 129:
  if( gametype == GT_CTF ) {



   if (ps->persistant[PERS_TEAM] == TEAM_RED) {
    if (item->giTag == PW_BLUEFLAG ||
     (item->giTag == PW_REDFLAG && ent->modelindex2) ||
     (item->giTag == PW_REDFLAG && ps->powerups[PW_BLUEFLAG]) )
     return can_pickup;
   } else if (ps->persistant[PERS_TEAM] == TEAM_BLUE) {
    if (item->giTag == PW_REDFLAG ||
     (item->giTag == PW_BLUEFLAG && ent->modelindex2) ||
     (item->giTag == PW_BLUEFLAG && ps->powerups[PW_REDFLAG]) )
     return can_pickup;
   }
  }






  return qfalse;

 case 133:

  if ( ps->stats[STAT_HOLDABLE_ITEM] ) {
   return qfalse;
  }
  return can_pickup;

 case 130:
  return can_pickup;

 case 135:
  return can_pickup;

 case 136:
  Com_Error( ERR_DROP, "BG_CanItemBeGrabbed: IT_BAD" );
 default:


  Com_Printf("BG_CanItemBeGrabbed: unknown enum %d\n", item->giType );


  break;
 }

 return qfalse;
}
