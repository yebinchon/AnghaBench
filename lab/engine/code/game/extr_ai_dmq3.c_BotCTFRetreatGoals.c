
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ ltgtype; int ordered; int client; int decisionmaker; scalar_t__ rushbaseaway_time; scalar_t__ teamgoal_time; } ;
typedef TYPE_1__ bot_state_t ;


 scalar_t__ BotCTFCarryingFlag (TYPE_1__*) ;
 int BotRefuseOrder (TYPE_1__*) ;
 int BotSetTeamStatus (TYPE_1__*) ;
 scalar_t__ CTF_RUSHBASE_TIME ;
 scalar_t__ FloatTime () ;
 scalar_t__ LTG_RUSHBASE ;
 int qfalse ;

void BotCTFRetreatGoals(bot_state_t *bs) {

 if (BotCTFCarryingFlag(bs)) {

  if (bs->ltgtype != LTG_RUSHBASE) {
   BotRefuseOrder(bs);
   bs->ltgtype = LTG_RUSHBASE;
   bs->teamgoal_time = FloatTime() + CTF_RUSHBASE_TIME;
   bs->rushbaseaway_time = 0;
   bs->decisionmaker = bs->client;
   bs->ordered = qfalse;
   BotSetTeamStatus(bs);
  }
 }
}
