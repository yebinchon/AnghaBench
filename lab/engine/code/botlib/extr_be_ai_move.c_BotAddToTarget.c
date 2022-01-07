
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int VectorCopy (int ,int ) ;
 int VectorMA (int ,float,int ,int ) ;
 float VectorNormalize (int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

int BotAddToTarget(vec3_t start, vec3_t end, float maxdist, float *dist, vec3_t target)
{
 vec3_t dir;
 float curdist;

 VectorSubtract(end, start, dir);
 curdist = VectorNormalize(dir);
 if (*dist + curdist < maxdist)
 {
  VectorCopy(end, target);
  *dist += curdist;
  return qfalse;
 }
 else
 {
  VectorMA(start, maxdist - *dist, dir, target);
  *dist = maxdist;
  return qtrue;
 }
}
