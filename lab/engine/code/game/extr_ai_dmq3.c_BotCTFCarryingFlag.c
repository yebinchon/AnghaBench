
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__* inventory; } ;
typedef TYPE_1__ bot_state_t ;


 int CTF_FLAG_BLUE ;
 int CTF_FLAG_NONE ;
 int CTF_FLAG_RED ;
 scalar_t__ GT_CTF ;
 size_t INVENTORY_BLUEFLAG ;
 size_t INVENTORY_REDFLAG ;
 scalar_t__ gametype ;

int BotCTFCarryingFlag(bot_state_t *bs) {
 if (gametype != GT_CTF) return CTF_FLAG_NONE;

 if (bs->inventory[INVENTORY_REDFLAG] > 0) return CTF_FLAG_RED;
 else if (bs->inventory[INVENTORY_BLUEFLAG] > 0) return CTF_FLAG_BLUE;
 return CTF_FLAG_NONE;
}
