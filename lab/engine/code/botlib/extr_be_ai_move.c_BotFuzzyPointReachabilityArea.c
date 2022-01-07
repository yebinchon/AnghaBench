
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 scalar_t__ AAS_AreaReachability (int) ;
 int AAS_PointAreaNum (int*) ;
 int AAS_TraceAreas (int*,int*,int*,int**,int) ;
 int VectorCopy (int*,int*) ;
 float VectorLength (int*) ;
 int VectorSubtract (int*,int*,int*) ;

int BotFuzzyPointReachabilityArea(vec3_t origin)
{
 int firstareanum, j, x, y, z;
 int areas[10], numareas, areanum, bestareanum;
 float dist, bestdist;
 vec3_t points[10], v, end;

 firstareanum = 0;
 areanum = AAS_PointAreaNum(origin);
 if (areanum)
 {
  firstareanum = areanum;
  if (AAS_AreaReachability(areanum)) return areanum;
 }
 VectorCopy(origin, end);
 end[2] += 4;
 numareas = AAS_TraceAreas(origin, end, areas, points, 10);
 for (j = 0; j < numareas; j++)
 {
  if (AAS_AreaReachability(areas[j])) return areas[j];
 }
 bestdist = 999999;
 bestareanum = 0;
 for (z = 1; z >= -1; z -= 1)
 {
  for (x = 1; x >= -1; x -= 1)
  {
   for (y = 1; y >= -1; y -= 1)
   {
    VectorCopy(origin, end);
    end[0] += x * 8;
    end[1] += y * 8;
    end[2] += z * 12;
    numareas = AAS_TraceAreas(origin, end, areas, points, 10);
    for (j = 0; j < numareas; j++)
    {
     if (AAS_AreaReachability(areas[j]))
     {
      VectorSubtract(points[j], origin, v);
      dist = VectorLength(v);
      if (dist < bestdist)
      {
       bestareanum = areas[j];
       bestdist = dist;
      }
     }
     if (!firstareanum) firstareanum = areas[j];
    }
   }
  }
  if (bestareanum) return bestareanum;
 }
 return firstareanum;
}
