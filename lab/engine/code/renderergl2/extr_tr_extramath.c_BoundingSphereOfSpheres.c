
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float MAX (float,float) ;
 float VectorLength (int ) ;
 int VectorMA (int ,float,int ,int ) ;
 int VectorScale (int ,float,int ) ;
 int VectorSubtract (int ,int ,int ) ;

void BoundingSphereOfSpheres(vec3_t origin1, float radius1, vec3_t origin2, float radius2, vec3_t origin3, float *radius3)
{
 vec3_t diff;

 VectorScale(origin1, 0.5f, origin3);
 VectorMA(origin3, 0.5f, origin2, origin3);

 VectorSubtract(origin1, origin2, diff);
 *radius3 = VectorLength(diff) * 0.5f + MAX(radius1, radius2);
}
