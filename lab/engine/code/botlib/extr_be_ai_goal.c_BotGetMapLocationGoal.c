
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int member_0; int member_1; int member_2; } ;
typedef TYPE_1__ vec3_t ;
struct TYPE_8__ {TYPE_1__ origin; int areanum; int name; struct TYPE_8__* next; } ;
typedef TYPE_2__ maplocation_t ;
struct TYPE_9__ {scalar_t__ iteminfo; scalar_t__ flags; scalar_t__ number; int maxs; int mins; scalar_t__ entitynum; int origin; int areanum; } ;
typedef TYPE_3__ bot_goal_t ;


 int Q_stricmp (int ,char*) ;
 int VectorCopy (TYPE_1__,int ) ;
 TYPE_2__* maplocations ;
 int qfalse ;
 int qtrue ;

int BotGetMapLocationGoal(char *name, bot_goal_t *goal)
{
 maplocation_t *ml;
 vec3_t mins = {-8, -8, -8}, maxs = {8, 8, 8};

 for (ml = maplocations; ml; ml = ml->next)
 {
  if (!Q_stricmp(ml->name, name))
  {
   goal->areanum = ml->areanum;
   VectorCopy(ml->origin, goal->origin);
   goal->entitynum = 0;
   VectorCopy(mins, goal->mins);
   VectorCopy(maxs, goal->maxs);
   goal->number = 0;
   goal->flags = 0;
   goal->iteminfo = 0;
   return qtrue;
  }
 }
 return qfalse;
}
