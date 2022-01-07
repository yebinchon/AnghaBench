
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {scalar_t__ ltgtype; scalar_t__ enemy; } ;
typedef TYPE_1__ bot_state_t ;
typedef int aas_entityinfo_t ;
struct TYPE_12__ {scalar_t__ entitynum; } ;
struct TYPE_11__ {scalar_t__ entitynum; } ;


 scalar_t__ Bot1FCTFCarryingFlag (TYPE_1__*) ;
 int BotAggression (TYPE_1__*) ;
 scalar_t__ BotCTFCarryingFlag (TYPE_1__*) ;
 int BotEntityInfo (scalar_t__,int *) ;
 int BotFeelingBad (TYPE_1__*) ;
 scalar_t__ BotHarvesterCarryingCubes (TYPE_1__*) ;
 scalar_t__ EntityCarriesCubes (int *) ;
 scalar_t__ EntityCarriesFlag (int *) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 scalar_t__ LTG_ATTACKENEMYBASE ;
 scalar_t__ LTG_GETFLAG ;
 TYPE_3__ blueobelisk ;
 scalar_t__ gametype ;
 int qfalse ;
 int qtrue ;
 TYPE_2__ redobelisk ;

int BotWantsToRetreat(bot_state_t *bs) {
 aas_entityinfo_t entinfo;

 if (gametype == GT_CTF) {

  if (BotCTFCarryingFlag(bs))
   return qtrue;
 }
 if (bs->enemy >= 0) {
  BotEntityInfo(bs->enemy, &entinfo);

  if (EntityCarriesFlag(&entinfo)) return qfalse;




 }

 if (bs->ltgtype == LTG_GETFLAG)
  return qtrue;

 if (BotAggression(bs) < 50)
  return qtrue;
 return qfalse;
}
