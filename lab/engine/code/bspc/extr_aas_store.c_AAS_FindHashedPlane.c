
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int qboolean ;


 scalar_t__ AAS_PlaneEqual (int ,float,int) ;
 int PLANE_HASH_SIZE ;
 int* aas_hashplanes ;
 int* aas_planechain ;
 scalar_t__ fabs (float) ;

qboolean AAS_FindHashedPlane(vec3_t normal, float dist, int *planenum)
{
 int i, p;
 int hash, h;

 hash = (int)fabs(dist) / 8;
 hash &= (PLANE_HASH_SIZE-1);


 for (i = -1; i <= 1; i++)
 {
  h = (hash+i)&(PLANE_HASH_SIZE-1);
  for (p = aas_hashplanes[h]; p >= 0; p = aas_planechain[p])
  {
   if (AAS_PlaneEqual(normal, dist, p))
   {
    *planenum = p;
    return 1;
   }
  }
 }
 return 0;
}
