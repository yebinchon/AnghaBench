
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int* vec3_t ;
typedef int value ;
struct TYPE_4__ {int* origin; int areanum; } ;
typedef TYPE_1__ bot_goal_t ;


 int MAX_INFO_STRING ;
 int VectorCopy (int*,int*) ;
 int memset (TYPE_1__*,int ,int) ;
 int qfalse ;
 int qtrue ;
 int strcmp (char*,char*) ;
 int trap_AAS_NextBSPEntity (int) ;
 int trap_AAS_TraceAreas (int*,int*,int*,int *,int) ;
 int trap_AAS_ValueForBSPEpairKey (int,char*,char*,int) ;
 int trap_AAS_VectorForBSPEpairKey (int,char*,int*) ;

int BotGoalForBSPEntity( char *classname, bot_goal_t *goal ) {
 char value[MAX_INFO_STRING];
 vec3_t origin, start, end;
 int ent, numareas, areas[10];

 memset(goal, 0, sizeof(bot_goal_t));
 for (ent = trap_AAS_NextBSPEntity(0); ent; ent = trap_AAS_NextBSPEntity(ent)) {
  if (!trap_AAS_ValueForBSPEpairKey(ent, "classname", value, sizeof(value)))
   continue;
  if (!strcmp(value, classname)) {
   if (!trap_AAS_VectorForBSPEpairKey(ent, "origin", origin))
    return qfalse;
   VectorCopy(origin, goal->origin);
   VectorCopy(origin, start);
   start[2] -= 32;
   VectorCopy(origin, end);
   end[2] += 32;
   numareas = trap_AAS_TraceAreas(start, end, areas, ((void*)0), 10);
   if (!numareas)
    return qfalse;
   goal->areanum = areas[0];
   return qtrue;
  }
 }
 return qfalse;
}
