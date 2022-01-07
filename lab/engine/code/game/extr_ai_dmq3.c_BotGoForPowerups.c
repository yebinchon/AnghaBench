
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ ltg_time; } ;
typedef TYPE_1__ bot_state_t ;


 int BotDontAvoid (TYPE_1__*,char*) ;

void BotGoForPowerups(bot_state_t *bs) {


 BotDontAvoid(bs, "Quad Damage");
 BotDontAvoid(bs, "Regeneration");
 BotDontAvoid(bs, "Battle Suit");
 BotDontAvoid(bs, "Speed");
 BotDontAvoid(bs, "Invisibility");



 bs->ltg_time = 0;
}
