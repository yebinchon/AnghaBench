
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int trBase; } ;
struct TYPE_7__ {scalar_t__ eType; scalar_t__ weapon; TYPE_1__ pos; } ;
typedef TYPE_2__ entityState_t ;
struct TYPE_8__ {int ms; } ;
typedef TYPE_3__ bot_state_t ;


 int AVOID_ALWAYS ;
 scalar_t__ ET_MISSILE ;
 scalar_t__ WP_GRENADE_LAUNCHER ;
 int trap_BotAddAvoidSpot (int ,int ,int,int ) ;

void BotCheckForGrenades(bot_state_t *bs, entityState_t *state) {

 if (state->eType != ET_MISSILE || state->weapon != WP_GRENADE_LAUNCHER)
  return;

 trap_BotAddAvoidSpot(bs->ms, state->pos.trBase, 160, AVOID_ALWAYS);
}
