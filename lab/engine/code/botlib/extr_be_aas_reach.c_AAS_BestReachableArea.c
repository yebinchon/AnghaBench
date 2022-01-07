
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {float* endpos; int startsolid; } ;
typedef TYPE_1__ aas_trace_t ;
typedef int aas_link_t ;
struct TYPE_7__ {int loaded; } ;
struct TYPE_6__ {int (* Print ) (int ,char*) ;} ;


 int AAS_BestReachableLinkArea (int *) ;
 int AAS_DrawPermanentCross (float*,int,int ) ;
 int * AAS_LinkEntityClientBBox (float*,float*,int,int ) ;
 int AAS_PointAreaNum (float*) ;
 TYPE_1__ AAS_TraceClientBBox (float*,float*,int ,int) ;
 int AAS_UnlinkFromAreas (int *) ;
 int LINECOLOR_RED ;
 int Log_Write (char*,float,float,float,int) ;
 int PRESENCE_CROUCH ;
 int PRT_ERROR ;
 int PRT_MESSAGE ;
 int VectorAdd (float*,float*,float*) ;
 int VectorCopy (float*,float*) ;
 TYPE_3__ aasworld ;
 TYPE_2__ botimport ;
 int stub1 (int ,char*) ;
 int stub2 (int ,char*) ;

int AAS_BestReachableArea(vec3_t origin, vec3_t mins, vec3_t maxs, vec3_t goalorigin)
{
 int areanum, i, j, k, l;
 aas_link_t *areas;
 vec3_t absmins, absmaxs;

 vec3_t start, end;
 aas_trace_t trace;

 if (!aasworld.loaded)
 {
  botimport.Print(PRT_ERROR, "AAS_BestReachableArea: aas not loaded\n");
  return 0;
 }

 VectorCopy(origin, start);
 areanum = AAS_PointAreaNum(start);

 for (i = 0; i < 5 && !areanum; i++)
 {
  for (j = 0; j < 5 && !areanum; j++)
  {
   for (k = -1; k <= 1 && !areanum; k++)
   {
    for (l = -1; l <= 1 && !areanum; l++)
    {
     VectorCopy(origin, start);
     start[0] += (float) j * 4 * k;
     start[1] += (float) j * 4 * l;
     start[2] += (float) i * 4;
     areanum = AAS_PointAreaNum(start);
    }
   }
  }
 }

 if (areanum)
 {

  VectorCopy(start, end);
  start[2] += 0.25;
  end[2] -= 50;
  trace = AAS_TraceClientBBox(start, end, PRESENCE_CROUCH, -1);
  if (!trace.startsolid)
  {
   areanum = AAS_PointAreaNum(trace.endpos);
   VectorCopy(trace.endpos, goalorigin);




   if (areanum) return areanum;
  }
  else
  {
   VectorCopy(start, goalorigin);
   return areanum;
  }
 }




 VectorCopy(origin, goalorigin);

 VectorAdd(origin, mins, absmins);
 VectorAdd(origin, maxs, absmaxs);




 areas = AAS_LinkEntityClientBBox(absmins, absmaxs, -1, PRESENCE_CROUCH);

 areanum = AAS_BestReachableLinkArea(areas);

 AAS_UnlinkFromAreas(areas);

 return areanum;
}
