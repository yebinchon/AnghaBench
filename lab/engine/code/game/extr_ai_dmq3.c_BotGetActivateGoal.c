
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_28__ TYPE_7__ ;
typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_10__ ;


typedef int vec3_t ;
typedef int tmpmodel ;
typedef int targetname ;
typedef int target ;
typedef int model ;
typedef int classname ;
struct TYPE_25__ {int areanum; int tfl; int origin; TYPE_3__* activatestack; } ;
typedef TYPE_4__ bot_state_t ;
struct TYPE_23__ {scalar_t__ entitynum; int areanum; } ;
struct TYPE_26__ {int numareas; int* areas; int time; TYPE_2__ goal; } ;
typedef TYPE_5__ bot_activategoal_t ;
struct TYPE_27__ {int origin; int modelindex; } ;
typedef TYPE_6__ aas_entityinfo_t ;
struct TYPE_28__ {int contents; } ;
typedef TYPE_7__ aas_areainfo_t ;
struct TYPE_22__ {scalar_t__ entitynum; } ;
struct TYPE_24__ {int time; int start_time; TYPE_1__ goal; scalar_t__ inuse; } ;
struct TYPE_21__ {scalar_t__ integer; } ;


 int AREACONTENTS_MOVER ;
 int BotAI_Print (int ,char*,char*) ;
 int BotEnableActivateGoalAreas (TYPE_5__*,int ) ;
 int BotEntityInfo (int,TYPE_6__*) ;
 int BotFuncButtonActivateGoal (TYPE_4__*,int,TYPE_5__*) ;
 int BotFuncDoorActivateGoal (TYPE_4__*,int,TYPE_5__*) ;
 int BotModelMinsMaxs (int,int ,int ,int ,int ) ;
 int BotTriggerMultipleActivateGoal (TYPE_4__*,int,TYPE_5__*) ;
 int Com_sprintf (char*,int,char*,int ) ;
 int ET_MOVER ;
 int FloatTime () ;
 int MAX_ACTIVATEAREAS ;
 int MAX_INFO_STRING ;
 int PRT_ERROR ;
 int VectorClear (int ) ;
 int VectorCompare (int ,int ) ;
 int atoi (char*) ;
 TYPE_10__ bot_developer ;
 int memset (TYPE_5__*,int ,int) ;
 int qfalse ;
 int strcmp (char*,char*) ;
 int trap_AAS_AreaInfo (int,TYPE_7__*) ;
 scalar_t__ trap_AAS_AreaReachability (int) ;
 int trap_AAS_AreaTravelTimeToGoalArea (int,int ,int ,int ) ;
 int trap_AAS_BBoxAreas (int ,int ,int*,int) ;
 scalar_t__ trap_AAS_FloatForBSPEpairKey (int,char*,float*) ;
 int trap_AAS_IntForBSPEpairKey (int,char*,int*) ;
 int trap_AAS_NextBSPEntity (int) ;
 scalar_t__ trap_AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int trap_AAS_VectorForBSPEpairKey (int,char*,int ) ;

int BotGetActivateGoal(bot_state_t *bs, int entitynum, bot_activategoal_t *activategoal) {
 int i, ent, cur_entities[10], spawnflags, modelindex, areas[MAX_ACTIVATEAREAS*2], numareas, t;
 char model[MAX_INFO_STRING], tmpmodel[128];
 char target[128], classname[128];
 float health;
 char targetname[10][128];
 aas_entityinfo_t entinfo;
 aas_areainfo_t areainfo;
 vec3_t origin, absmins, absmaxs;

 memset(activategoal, 0, sizeof(bot_activategoal_t));
 BotEntityInfo(entitynum, &entinfo);
 Com_sprintf(model, sizeof( model ), "*%d", entinfo.modelindex);
 for (ent = trap_AAS_NextBSPEntity(0); ent; ent = trap_AAS_NextBSPEntity(ent)) {
  if (!trap_AAS_ValueForBSPEpairKey(ent, "model", tmpmodel, sizeof(tmpmodel))) continue;
  if (!strcmp(model, tmpmodel)) break;
 }
 if (!ent) {
  BotAI_Print(PRT_ERROR, "BotGetActivateGoal: no entity found with model %s\n", model);
  return 0;
 }
 trap_AAS_ValueForBSPEpairKey(ent, "classname", classname, sizeof(classname));
 if (!*classname) {
  BotAI_Print(PRT_ERROR, "BotGetActivateGoal: entity with model %s has no classname\n", model);
  return 0;
 }

 if (!strcmp(classname, "func_door")) {
  if (trap_AAS_FloatForBSPEpairKey(ent, "health", &health)) {

   if (health) {
    BotFuncDoorActivateGoal(bs, ent, activategoal);
    return ent;
   }
  }

  trap_AAS_IntForBSPEpairKey(ent, "spawnflags", &spawnflags);

  if ( spawnflags & 1 )
   return 0;

  if (!trap_AAS_VectorForBSPEpairKey(ent, "origin", origin)) {
   VectorClear(origin);
  }

  if (!VectorCompare(origin, entinfo.origin))
   return 0;

  trap_AAS_ValueForBSPEpairKey(ent, "model", model, sizeof(model));
  if (*model) {
   modelindex = atoi(model+1);
   if (modelindex) {
    BotModelMinsMaxs(modelindex, ET_MOVER, 0, absmins, absmaxs);

    numareas = trap_AAS_BBoxAreas(absmins, absmaxs, areas, MAX_ACTIVATEAREAS*2);

    for (i = 0; i < numareas; i++) {
     if (activategoal->numareas >= MAX_ACTIVATEAREAS)
      break;
     if ( !trap_AAS_AreaReachability(areas[i]) ) {
      continue;
     }
     trap_AAS_AreaInfo(areas[i], &areainfo);
     if (areainfo.contents & AREACONTENTS_MOVER) {
      activategoal->areas[activategoal->numareas++] = areas[i];
     }
    }

    for (i = 0; i < numareas; i++) {
     if (activategoal->numareas >= MAX_ACTIVATEAREAS)
      break;
     if ( trap_AAS_AreaReachability(areas[i]) ) {
      continue;
     }
     trap_AAS_AreaInfo(areas[i], &areainfo);
     if (areainfo.contents & AREACONTENTS_MOVER) {
      activategoal->areas[activategoal->numareas++] = areas[i];
     }
    }
   }
  }
 }

 if (!strcmp(classname, "func_button")) {
  return 0;
 }

 if (!trap_AAS_ValueForBSPEpairKey(ent, "targetname", targetname[0], sizeof(targetname[0]))) {
  if (bot_developer.integer) {
   BotAI_Print(PRT_ERROR, "BotGetActivateGoal: entity with model \"%s\" has no targetname\n", model);
  }
  return 0;
 }

 cur_entities[0] = trap_AAS_NextBSPEntity(0);
 for (i = 0; i >= 0 && i < 10;) {
  for (ent = cur_entities[i]; ent; ent = trap_AAS_NextBSPEntity(ent)) {
   if (!trap_AAS_ValueForBSPEpairKey(ent, "target", target, sizeof(target))) continue;
   if (!strcmp(targetname[i], target)) {
    cur_entities[i] = trap_AAS_NextBSPEntity(ent);
    break;
   }
  }
  if (!ent) {
   if (bot_developer.integer) {
    BotAI_Print(PRT_ERROR, "BotGetActivateGoal: no entity with target \"%s\"\n", targetname[i]);
   }
   i--;
   continue;
  }
  if (!trap_AAS_ValueForBSPEpairKey(ent, "classname", classname, sizeof(classname))) {
   if (bot_developer.integer) {
    BotAI_Print(PRT_ERROR, "BotGetActivateGoal: entity with target \"%s\" has no classname\n", targetname[i]);
   }
   continue;
  }

  if (!strcmp(classname, "func_button")) {

   if (!BotFuncButtonActivateGoal(bs, ent, activategoal))
    continue;

   if ( bs->activatestack && bs->activatestack->inuse &&
     bs->activatestack->goal.entitynum == activategoal->goal.entitynum &&
     bs->activatestack->time > FloatTime() &&
     bs->activatestack->start_time < FloatTime() - 2)
    continue;

   if ( trap_AAS_AreaReachability(bs->areanum) ) {

    BotEnableActivateGoalAreas( activategoal, qfalse );

    t = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, activategoal->goal.areanum, bs->tfl);

    if (!t) {
     continue;
    }
    activategoal->time = FloatTime() + t * 0.01 + 5;
   }
   return ent;
  }

  else if (!strcmp(classname, "trigger_multiple")) {

   if (!BotTriggerMultipleActivateGoal(bs, ent, activategoal))
    continue;

   if ( bs->activatestack && bs->activatestack->inuse &&
     bs->activatestack->goal.entitynum == activategoal->goal.entitynum &&
     bs->activatestack->time > FloatTime() &&
     bs->activatestack->start_time < FloatTime() - 2)
    continue;

   if ( trap_AAS_AreaReachability(bs->areanum) ) {

    BotEnableActivateGoalAreas( activategoal, qfalse );

    t = trap_AAS_AreaTravelTimeToGoalArea(bs->areanum, bs->origin, activategoal->goal.areanum, bs->tfl);

    if (!t) {
     continue;
    }
    activategoal->time = FloatTime() + t * 0.01 + 5;
   }
   return ent;
  }
  else if (!strcmp(classname, "func_timer")) {

   continue;
  }

  else if (!strcmp(classname, "target_relay") || !strcmp(classname, "target_delay")) {
   if (trap_AAS_ValueForBSPEpairKey(ent, "targetname", targetname[i+1], sizeof(targetname[0]))) {
    i++;
    cur_entities[i] = trap_AAS_NextBSPEntity(0);
   }
  }
 }



 return 0;
}
