
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_25__ TYPE_7__ ;
typedef struct TYPE_24__ TYPE_6__ ;
typedef struct TYPE_23__ TYPE_5__ ;
typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
typedef int netname ;
struct TYPE_22__ {double notblocked_time; int flags; scalar_t__ ainode; scalar_t__ ltg_time; scalar_t__ nbg_time; int ms; int areanum; TYPE_1__* activatestack; int client; } ;
typedef TYPE_4__ bot_state_t ;
struct TYPE_23__ {scalar_t__ type; int flags; scalar_t__* movedir; int blockentity; int blocked; } ;
typedef TYPE_5__ bot_moveresult_t ;
struct TYPE_20__ {int entitynum; } ;
struct TYPE_24__ {TYPE_2__ goal; } ;
typedef TYPE_6__ bot_activategoal_t ;
struct TYPE_25__ {scalar_t__ modelindex; int number; } ;
typedef TYPE_7__ aas_entityinfo_t ;
struct TYPE_21__ {int member_2; int member_1; int member_0; } ;
struct TYPE_19__ {int inuse; } ;


 scalar_t__ AINode_Seek_LTG ;
 scalar_t__ AINode_Seek_NBG ;
 int AngleVectors (scalar_t__*,scalar_t__*,int *,int *) ;
 int BFL_AVOIDRIGHT ;
 int BotAI_Print (int ,char*,char*,scalar_t__) ;
 int BotEnableActivateGoalAreas (TYPE_6__*,int ) ;
 int BotEntityInfo (int ,TYPE_7__*) ;
 int BotGetActivateGoal (TYPE_4__*,int ,TYPE_6__*) ;
 int BotGoForActivateGoal (TYPE_4__*,TYPE_6__*) ;
 int BotIsGoingToActivateEntity (TYPE_4__*,int ) ;
 int BotRandomMove (TYPE_4__*,TYPE_5__*) ;
 int ClientName (int ,char*,int) ;
 int CrossProduct (scalar_t__*,scalar_t__*,scalar_t__*) ;
 double FloatTime () ;
 int MAX_NETNAME ;
 int MOVERESULT_ONTOPOFOBSTACLE ;
 int MOVE_CROUCH ;
 int MOVE_WALK ;
 int PRT_MESSAGE ;
 scalar_t__ RESULTTYPE_INSOLIDAREA ;
 int VectorMA (scalar_t__*,int,scalar_t__*,scalar_t__*) ;
 int VectorNegate (scalar_t__*,scalar_t__*) ;
 double VectorNormalize (scalar_t__*) ;
 int VectorSet (scalar_t__*,int ,int,int ) ;
 scalar_t__ max_bspmodelindex ;
 int qtrue ;
 int random () ;
 scalar_t__ trap_AAS_AreaReachability (int ) ;
 int trap_BotMoveInDirection (int ,scalar_t__*,int,int) ;

void BotAIBlocked(bot_state_t *bs, bot_moveresult_t *moveresult, int activate) {



 int movetype, bspent;
 vec3_t hordir, sideward, angles, up = {0, 0, 1};

 aas_entityinfo_t entinfo;
 bot_activategoal_t activategoal;


 if (!moveresult->blocked) {
  bs->notblocked_time = FloatTime();
  return;
 }

 if ( moveresult->type == RESULTTYPE_INSOLIDAREA ) {

  BotRandomMove(bs, moveresult);

  return;
 }

 BotEntityInfo(moveresult->blockentity, &entinfo);





 if (activate && entinfo.modelindex > 0 && entinfo.modelindex <= max_bspmodelindex) {

  bspent = BotGetActivateGoal(bs, entinfo.number, &activategoal);
  if (bspent) {

   if (bs->activatestack && !bs->activatestack->inuse)
    bs->activatestack = ((void*)0);

   if (!BotIsGoingToActivateEntity(bs, activategoal.goal.entitynum)) {

    BotGoForActivateGoal(bs, &activategoal);
   }



   if (!(moveresult->flags & MOVERESULT_ONTOPOFOBSTACLE) &&
    trap_AAS_AreaReachability(bs->areanum))
    return;
  }
  else {

   BotEnableActivateGoalAreas(&activategoal, qtrue);
  }
 }

 hordir[0] = moveresult->movedir[0];
 hordir[1] = moveresult->movedir[1];
 hordir[2] = 0;

 if (VectorNormalize(hordir) < 0.1) {
  VectorSet(angles, 0, 360 * random(), 0);
  AngleVectors(angles, hordir, ((void*)0), ((void*)0));
 }



 movetype = MOVE_WALK;
 CrossProduct(hordir, up, sideward);

 if (bs->flags & BFL_AVOIDRIGHT) VectorNegate(sideward, sideward);

 if (movetype != MOVE_CROUCH || !trap_BotMoveInDirection(bs->ms, hordir, 400, movetype)) {

  if (!trap_BotMoveInDirection(bs->ms, sideward, 400, movetype)) {

   bs->flags ^= BFL_AVOIDRIGHT;


   VectorMA(sideward, -1, hordir, sideward);

   trap_BotMoveInDirection(bs->ms, sideward, 400, movetype);
  }
 }

 if (bs->notblocked_time < FloatTime() - 0.4) {


  if (bs->ainode == AINode_Seek_NBG) bs->nbg_time = 0;
  else if (bs->ainode == AINode_Seek_LTG) bs->ltg_time = 0;
 }
}
