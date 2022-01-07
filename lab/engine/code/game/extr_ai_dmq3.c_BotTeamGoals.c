
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {scalar_t__ order_time; } ;
typedef TYPE_1__ bot_state_t ;


 int Bot1FCTFRetreatGoals (TYPE_1__*) ;
 int Bot1FCTFSeekGoals (TYPE_1__*) ;
 int BotCTFRetreatGoals (TYPE_1__*) ;
 int BotCTFSeekGoals (TYPE_1__*) ;
 int BotHarvesterRetreatGoals (TYPE_1__*) ;
 int BotHarvesterSeekGoals (TYPE_1__*) ;
 int BotObeliskRetreatGoals (TYPE_1__*) ;
 int BotObeliskSeekGoals (TYPE_1__*) ;
 scalar_t__ GT_1FCTF ;
 scalar_t__ GT_CTF ;
 scalar_t__ GT_HARVESTER ;
 scalar_t__ GT_OBELISK ;
 scalar_t__ gametype ;

void BotTeamGoals(bot_state_t *bs, int retreat) {

 if ( retreat ) {
  if (gametype == GT_CTF) {
   BotCTFRetreatGoals(bs);
  }
 }
 else {
  if (gametype == GT_CTF) {

   BotCTFSeekGoals(bs);
  }
 }


 bs->order_time = 0;
}
