
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {int* inventory; int client; } ;
typedef TYPE_1__ bot_state_t ;


 int Bot1FCTFCarryingFlag (TYPE_1__*) ;
 int BotCTFCarryingFlag (TYPE_1__*) ;
 int BotHarvesterCarryingCubes (TYPE_1__*) ;
 int BotUseInvulnerability (TYPE_1__*) ;
 int BotUseKamikaze (TYPE_1__*) ;
 size_t INVENTORY_HEALTH ;
 size_t INVENTORY_MEDKIT ;
 size_t INVENTORY_TELEPORTER ;
 int trap_EA_Use (int ) ;

void BotBattleUseItems(bot_state_t *bs) {
 if (bs->inventory[INVENTORY_HEALTH] < 40) {
  if (bs->inventory[INVENTORY_TELEPORTER] > 0) {
   if (!BotCTFCarryingFlag(bs)




    ) {
    trap_EA_Use(bs->client);
   }
  }
 }
 if (bs->inventory[INVENTORY_HEALTH] < 60) {
  if (bs->inventory[INVENTORY_MEDKIT] > 0) {
   trap_EA_Use(bs->client);
  }
 }




}
