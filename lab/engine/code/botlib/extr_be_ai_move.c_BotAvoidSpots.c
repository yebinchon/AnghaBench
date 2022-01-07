
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int vec3_t ;
struct TYPE_5__ {int type; int origin; int radius; } ;
typedef TYPE_1__ bot_avoidspot_t ;
struct TYPE_6__ {int traveltype; int start; int end; } ;
typedef TYPE_2__ aas_reachability_t ;


 int AVOID_ALWAYS ;
 int AVOID_CLEAR ;
 float DistanceFromLineSquared (int ,int ,int ) ;
 float Square (int ) ;
 int TRAVELTYPE_MASK ;
 float VectorDistanceSquared (int ,int ) ;
 int qfalse ;
 int qtrue ;

int BotAvoidSpots(vec3_t origin, aas_reachability_t *reach, bot_avoidspot_t *avoidspots, int numavoidspots)
{
 int checkbetween, i, type;
 float squareddist, squaredradius;

 switch(reach->traveltype & TRAVELTYPE_MASK)
 {
  case 130: checkbetween = qtrue; break;
  case 140: checkbetween = qtrue; break;
  case 142: checkbetween = qtrue; break;
  case 134: checkbetween = qtrue; break;
  case 129: checkbetween = qfalse; break;
  case 136: checkbetween = qfalse; break;
  case 132: checkbetween = qtrue; break;
  case 128: checkbetween = qtrue; break;
  case 131: checkbetween = qfalse; break;
  case 139: checkbetween = qfalse; break;
  case 137: checkbetween = qfalse; break;
  case 133: checkbetween = qfalse; break;
  case 141: checkbetween = qfalse; break;
  case 135: checkbetween = qfalse; break;
  case 138: checkbetween = qfalse; break;
  default: checkbetween = qtrue; break;
 }

 type = AVOID_CLEAR;
 for (i = 0; i < numavoidspots; i++)
 {
  squaredradius = Square(avoidspots[i].radius);
  squareddist = DistanceFromLineSquared(avoidspots[i].origin, origin, reach->start);

  if (squareddist < squaredradius &&
   VectorDistanceSquared(avoidspots[i].origin, origin) > squareddist)
  {
   type = avoidspots[i].type;
  }
  else if (checkbetween) {
   squareddist = DistanceFromLineSquared(avoidspots[i].origin, reach->start, reach->end);

   if (squareddist < squaredradius &&
    VectorDistanceSquared(avoidspots[i].origin, reach->start) > squareddist)
   {
    type = avoidspots[i].type;
   }
  }
  else
  {
   VectorDistanceSquared(avoidspots[i].origin, reach->end);

   if (squareddist < squaredradius &&
    VectorDistanceSquared(avoidspots[i].origin, reach->start) > squareddist)
   {
    type = avoidspots[i].type;
   }
  }
  if (type == AVOID_ALWAYS)
   return type;
 }
 return type;
}
