
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_4__ {TYPE_1__* vertexes; } ;
struct TYPE_3__ {float* v; } ;


 TYPE_2__ thworld ;

int TH_OutsideBoundingBox(int v1, int v2, vec3_t mins, vec3_t maxs)
{
 float *p1, *p2;
 int i;

 p1 = thworld.vertexes[v1].v;
 p2 = thworld.vertexes[v2].v;

 for (i = 0; i < 3; i++)
 {
  if (p1[i] < mins[i] && p2[i] < mins[i]) return 1;
  if (p1[i] > maxs[i] && p2[i] > maxs[i]) return 1;
 }
 return 0;
}
