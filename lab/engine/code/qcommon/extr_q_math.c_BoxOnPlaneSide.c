
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
struct cplane_s {int type; float dist; int signbits; float* normal; } ;



int BoxOnPlaneSide(vec3_t emins, vec3_t emaxs, struct cplane_s *p)
{
 float dist[2];
 int sides, b, i;


 if (p->type < 3)
 {
  if (p->dist <= emins[p->type])
   return 1;
  if (p->dist >= emaxs[p->type])
   return 2;
  return 3;
 }


 dist[0] = dist[1] = 0;
 if (p->signbits < 8)
 {
  for (i=0 ; i<3 ; i++)
  {
   b = (p->signbits >> i) & 1;
   dist[ b] += p->normal[i]*emaxs[i];
   dist[!b] += p->normal[i]*emins[i];
  }
 }

 sides = 0;
 if (dist[0] >= p->dist)
  sides = 1;
 if (dist[1] < p->dist)
  sides |= 2;

 return sides;
}
