
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_7__ {int eType; int modelindex; int origin; } ;
struct TYPE_8__ {TYPE_1__ s; int inuse; } ;
typedef TYPE_2__ gentity_t ;
struct TYPE_9__ {int entitynum; int origin; } ;
typedef TYPE_3__ bot_goal_t ;
struct TYPE_10__ {int num_entities; } ;


 int G_ModelIndex (char*) ;
 scalar_t__ Square (int) ;
 scalar_t__ VectorLengthSquared (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 TYPE_2__* g_entities ;
 TYPE_4__ level ;

void BotSetEntityNumForGoalWithModel(bot_goal_t *goal, int eType, char *modelname) {
 gentity_t *ent;
 int i, modelindex;
 vec3_t dir;

 modelindex = G_ModelIndex( modelname );
 ent = &g_entities[0];
 for (i = 0; i < level.num_entities; i++, ent++) {
  if ( !ent->inuse ) {
   continue;
  }
  if ( eType && ent->s.eType != eType) {
   continue;
  }
  if (ent->s.modelindex != modelindex) {
   continue;
  }
  VectorSubtract(goal->origin, ent->s.origin, dir);
  if (VectorLengthSquared(dir) < Square(10)) {
   goal->entitynum = i;
   return;
  }
 }
}
