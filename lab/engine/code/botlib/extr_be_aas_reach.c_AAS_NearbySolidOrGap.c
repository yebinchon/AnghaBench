
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;


 int AAS_AreaGrounded (int) ;
 int AAS_AreaSwim (int) ;
 int AAS_PointAreaNum (int*) ;
 int VectorMA (int*,int,int*,int*) ;
 int VectorNormalize (int*) ;
 int VectorSubtract (int*,int*,int*) ;
 int qfalse ;
 int qtrue ;

int AAS_NearbySolidOrGap(vec3_t start, vec3_t end)
{
 vec3_t dir, testpoint;
 int areanum;

 VectorSubtract(end, start, dir);
 dir[2] = 0;
 VectorNormalize(dir);
 VectorMA(end, 48, dir, testpoint);

 areanum = AAS_PointAreaNum(testpoint);
 if (!areanum)
 {
  testpoint[2] += 16;
  areanum = AAS_PointAreaNum(testpoint);
  if (!areanum) return qtrue;
 }
 VectorMA(end, 64, dir, testpoint);
 areanum = AAS_PointAreaNum(testpoint);
 if (areanum)
 {
  if (!AAS_AreaSwim(areanum) && !AAS_AreaGrounded(areanum)) return qtrue;
 }
 return qfalse;
}
