
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_3__ {float* endpos; int fraction; int startsolid; scalar_t__ lastarea; scalar_t__ area; scalar_t__ planenum; scalar_t__ ent; } ;
typedef TYPE_1__ aas_trace_t ;


 int AAS_PresenceTypeBoundingBox (int,float*,float*) ;
 int VectorCopy (float*,float*) ;
 int VectorSubtract (float*,float*,float*) ;
 int qfalse ;
 int qtrue ;

int AAS_ClipToBBox(aas_trace_t *trace, vec3_t start, vec3_t end, int presencetype, vec3_t mins, vec3_t maxs)
{
 int i, j, side;
 float front, back, frac, planedist;
 vec3_t bboxmins, bboxmaxs, absmins, absmaxs, dir, mid;

 AAS_PresenceTypeBoundingBox(presencetype, bboxmins, bboxmaxs);
 VectorSubtract(mins, bboxmaxs, absmins);
 VectorSubtract(maxs, bboxmins, absmaxs);

 VectorCopy(end, trace->endpos);
 trace->fraction = 1;
 for (i = 0; i < 3; i++)
 {
  if (start[i] < absmins[i] && end[i] < absmins[i]) return qfalse;
  if (start[i] > absmaxs[i] && end[i] > absmaxs[i]) return qfalse;
 }

 VectorSubtract(end, start, dir);
 frac = 1;
 for (i = 0; i < 3; i++)
 {

  if (dir[i] > 0) planedist = absmins[i];
  else planedist = absmaxs[i];

  front = start[i] - planedist;
  back = end[i] - planedist;
  frac = front / (front-back);

  side = i + 1;
  if (side > 2) side = 0;
  mid[side] = start[side] + dir[side] * frac;
  if (mid[side] > absmins[side] && mid[side] < absmaxs[side])
  {

   side++;
   if (side > 2) side = 0;
   mid[side] = start[side] + dir[side] * frac;
   if (mid[side] > absmins[side] && mid[side] < absmaxs[side])
   {
    mid[i] = planedist;
    break;
   }
  }
 }

 if (i != 3)
 {
  trace->startsolid = qfalse;
  trace->fraction = frac;
  trace->ent = 0;
  trace->planenum = 0;
  trace->area = 0;
  trace->lastarea = 0;

  for (j = 0; j < 3; j++) trace->endpos[j] = start[j] + dir[j] * frac;
  return qtrue;
 }
 return qfalse;
}
