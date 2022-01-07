
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__* vec3_t ;
struct TYPE_5__ {float fraction; int * endpos; int startsolid; } ;
typedef TYPE_1__ bsp_trace_t ;
struct TYPE_6__ {int entitynum; scalar_t__* origin; } ;
typedef TYPE_2__ bot_state_t ;


 int BotAI_Trace (TYPE_1__*,scalar_t__*,int *,int *,scalar_t__*,int ,int ) ;
 int CONTENTS_LAVA ;
 int CONTENTS_SLIME ;
 int MASK_SOLID ;
 int VectorAdd (scalar_t__*,scalar_t__*,scalar_t__*) ;
 int VectorCopy (scalar_t__*,scalar_t__*) ;
 float VectorNormalize (scalar_t__*) ;
 int VectorScale (scalar_t__*,float,scalar_t__*) ;
 int VectorSubtract (int *,scalar_t__*,scalar_t__*) ;
 int crandom () ;
 int random () ;
 int trap_PointContents (int *,int ) ;

void BotRoamGoal(bot_state_t *bs, vec3_t goal) {
 int pc, i;
 float len, rnd;
 vec3_t dir, bestorg, belowbestorg;
 bsp_trace_t trace;

 for (i = 0; i < 10; i++) {

  VectorCopy(bs->origin, bestorg);
  rnd = random();
  if (rnd > 0.25) {

   if (random() < 0.5) bestorg[0] -= 800 * random() + 100;
   else bestorg[0] += 800 * random() + 100;
  }
  if (rnd < 0.75) {

   if (random() < 0.5) bestorg[1] -= 800 * random() + 100;
   else bestorg[1] += 800 * random() + 100;
  }

  bestorg[2] += 2 * 48 * crandom();

  BotAI_Trace(&trace, bs->origin, ((void*)0), ((void*)0), bestorg, bs->entitynum, MASK_SOLID);

  VectorSubtract(trace.endpos, bs->origin, dir);
  len = VectorNormalize(dir);

  if (len > 200) {

   VectorScale(dir, len * trace.fraction - 40, dir);
   VectorAdd(bs->origin, dir, bestorg);

   belowbestorg[0] = bestorg[0];
   belowbestorg[1] = bestorg[1];
   belowbestorg[2] = bestorg[2] - 800;
   BotAI_Trace(&trace, bestorg, ((void*)0), ((void*)0), belowbestorg, bs->entitynum, MASK_SOLID);

   if (!trace.startsolid) {
    trace.endpos[2]++;
    pc = trap_PointContents(trace.endpos, bs->entitynum);
    if (!(pc & (CONTENTS_LAVA | CONTENTS_SLIME))) {
     VectorCopy(bestorg, goal);
     return;
    }
   }
  }
 }
 VectorCopy(bestorg, goal);
}
