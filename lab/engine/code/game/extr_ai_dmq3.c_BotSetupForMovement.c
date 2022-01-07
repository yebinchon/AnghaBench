
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ groundEntityNum; int pm_flags; scalar_t__ pm_time; scalar_t__ viewheight; int velocity; int origin; } ;
struct TYPE_8__ {double walker; int ms; int viewangles; TYPE_1__ cur_ps; int thinktime; int client; int entitynum; } ;
typedef TYPE_2__ bot_state_t ;
struct TYPE_9__ {int viewangles; int or_moveflags; int presencetype; int thinktime; int client; int entitynum; int * viewoffset; int velocity; int origin; } ;
typedef TYPE_3__ bot_initmove_t ;


 scalar_t__ ENTITYNUM_NONE ;
 int MFL_ONGROUND ;
 int MFL_TELEPORTED ;
 int MFL_WALK ;
 int MFL_WATERJUMP ;
 int PMF_DUCKED ;
 int PMF_TIME_KNOCKBACK ;
 int PMF_TIME_WATERJUMP ;
 int PRESENCE_CROUCH ;
 int PRESENCE_NORMAL ;
 int VectorClear (int *) ;
 int VectorCopy (int ,int ) ;
 int memset (TYPE_3__*,int ,int) ;
 int trap_BotInitMoveState (int ,TYPE_3__*) ;

void BotSetupForMovement(bot_state_t *bs) {
 bot_initmove_t initmove;

 memset(&initmove, 0, sizeof(bot_initmove_t));
 VectorCopy(bs->cur_ps.origin, initmove.origin);
 VectorCopy(bs->cur_ps.velocity, initmove.velocity);
 VectorClear(initmove.viewoffset);
 initmove.viewoffset[2] += bs->cur_ps.viewheight;
 initmove.entitynum = bs->entitynum;
 initmove.client = bs->client;
 initmove.thinktime = bs->thinktime;

 if (bs->cur_ps.groundEntityNum != ENTITYNUM_NONE) initmove.or_moveflags |= MFL_ONGROUND;

 if ((bs->cur_ps.pm_flags & PMF_TIME_KNOCKBACK) && (bs->cur_ps.pm_time > 0)) {
  initmove.or_moveflags |= MFL_TELEPORTED;
 }

 if ((bs->cur_ps.pm_flags & PMF_TIME_WATERJUMP) && (bs->cur_ps.pm_time > 0)) {
  initmove.or_moveflags |= MFL_WATERJUMP;
 }

 if (bs->cur_ps.pm_flags & PMF_DUCKED) initmove.presencetype = PRESENCE_CROUCH;
 else initmove.presencetype = PRESENCE_NORMAL;

 if (bs->walker > 0.5) initmove.or_moveflags |= MFL_WALK;

 VectorCopy(bs->viewangles, initmove.viewangles);

 trap_BotInitMoveState(bs->ms, &initmove);
}
