
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int vec3_t ;
typedef int qboolean ;
struct TYPE_2__ {int numplanes; } ;


 scalar_t__ AAS_PlaneEqual (int ,float,int) ;
 TYPE_1__ aasworld ;

qboolean AAS_FindPlane(vec3_t normal, float dist, int *planenum)
{
 int i;

 for (i = 0; i < aasworld.numplanes; i++)
 {
  if (AAS_PlaneEqual(normal, dist, i))
  {
   *planenum = i;
   return 1;
  }
 }
 return 0;
}
