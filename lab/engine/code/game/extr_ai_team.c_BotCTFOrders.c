
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int redflagstatus; int blueflagstatus; } ;
typedef TYPE_1__ bot_state_t ;


 int BotCTFOrders_BothFlagsAtBase (TYPE_1__*) ;
 int BotCTFOrders_BothFlagsNotAtBase (TYPE_1__*) ;
 int BotCTFOrders_EnemyFlagNotAtBase (TYPE_1__*) ;
 int BotCTFOrders_FlagNotAtBase (TYPE_1__*) ;
 scalar_t__ BotTeam (TYPE_1__*) ;
 scalar_t__ TEAM_RED ;

void BotCTFOrders(bot_state_t *bs) {
 int flagstatus;


 if (BotTeam(bs) == TEAM_RED) flagstatus = bs->redflagstatus * 2 + bs->blueflagstatus;
 else flagstatus = bs->blueflagstatus * 2 + bs->redflagstatus;

 switch(flagstatus) {
  case 0: BotCTFOrders_BothFlagsAtBase(bs); break;
  case 1: BotCTFOrders_EnemyFlagNotAtBase(bs); break;
  case 2: BotCTFOrders_FlagNotAtBase(bs); break;
  case 3: BotCTFOrders_BothFlagsNotAtBase(bs); break;
 }
}
