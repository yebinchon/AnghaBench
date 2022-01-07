
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_19__ TYPE_9__ ;
typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_13__ {scalar_t__ giType; int giTag; } ;
typedef TYPE_1__ gitem_t ;
struct TYPE_19__ {size_t modelindex; int eFlags; } ;
struct TYPE_14__ {scalar_t__ miscTime; TYPE_9__ currentState; } ;
typedef TYPE_2__ centity_t ;
struct TYPE_18__ {scalar_t__* persistant; int* stats; int* ammo; } ;
struct TYPE_17__ {scalar_t__ time; TYPE_8__ predictedPlayerState; } ;
struct TYPE_16__ {int integer; } ;
struct TYPE_15__ {scalar_t__ gametype; } ;


 int BG_AddPredictableEventToPlayerstate (int ,size_t,TYPE_8__*) ;
 int BG_CanItemBeGrabbed (scalar_t__,TYPE_9__*,TYPE_8__*) ;
 int BG_PlayerTouchesItem (TYPE_8__*,TYPE_9__*,scalar_t__) ;
 int EF_NODRAW ;
 int EV_ITEM_PICKUP ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ IT_TEAM ;
 scalar_t__ IT_WEAPON ;
 size_t PERS_TEAM ;
 int PW_BLUEFLAG ;
 int PW_NEUTRALFLAG ;
 int PW_REDFLAG ;
 size_t STAT_WEAPONS ;
 scalar_t__ TEAM_BLUE ;
 scalar_t__ TEAM_RED ;
 TYPE_1__* bg_itemlist ;
 TYPE_5__ cg ;
 TYPE_4__ cg_predictItems ;
 TYPE_3__ cgs ;

__attribute__((used)) static void CG_TouchItem( centity_t *cent ) {
 gitem_t *item;

 if ( !cg_predictItems.integer ) {
  return;
 }
 if ( !BG_PlayerTouchesItem( &cg.predictedPlayerState, &cent->currentState, cg.time ) ) {
  return;
 }


 if ( cent->miscTime == cg.time ) {
  return;
 }

 if ( !BG_CanItemBeGrabbed( cgs.gametype, &cent->currentState, &cg.predictedPlayerState ) ) {
  return;
 }

 item = &bg_itemlist[ cent->currentState.modelindex ];
 if( cgs.gametype == GT_CTF ) {
  if (cg.predictedPlayerState.persistant[PERS_TEAM] == TEAM_RED &&
   item->giType == IT_TEAM && item->giTag == PW_REDFLAG)
   return;
  if (cg.predictedPlayerState.persistant[PERS_TEAM] == TEAM_BLUE &&
   item->giType == IT_TEAM && item->giTag == PW_BLUEFLAG)
   return;
 }


 BG_AddPredictableEventToPlayerstate( EV_ITEM_PICKUP, cent->currentState.modelindex , &cg.predictedPlayerState);


 cent->currentState.eFlags |= EF_NODRAW;


 cent->miscTime = cg.time;


 if ( item->giType == IT_WEAPON ) {
  cg.predictedPlayerState.stats[ STAT_WEAPONS ] |= 1 << item->giTag;
  if ( !cg.predictedPlayerState.ammo[ item->giTag ] ) {
   cg.predictedPlayerState.ammo[ item->giTag ] = 1;
  }
 }
}
