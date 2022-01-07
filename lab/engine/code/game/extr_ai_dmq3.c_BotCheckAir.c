
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* inventory; int lastair_time; int eye; } ;
typedef TYPE_1__ bot_state_t ;


 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int CONTENTS_WATER ;
 int FloatTime () ;
 size_t INVENTORY_ENVIRONMENTSUIT ;
 int trap_AAS_PointContents (int ) ;

void BotCheckAir(bot_state_t *bs) {
 if (bs->inventory[INVENTORY_ENVIRONMENTSUIT] <= 0) {
  if (trap_AAS_PointContents(bs->eye) & (CONTENTS_WATER|CONTENTS_SLIME|CONTENTS_LAVA)) {
   return;
  }
 }
 bs->lastair_time = FloatTime();
}
