
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* vec3_t ;
typedef int* mat4_t ;


 int DotProduct (int*,int*) ;

void Mat4View(vec3_t axes[3], vec3_t origin, mat4_t out)
{
 out[0] = axes[0][0];
 out[1] = axes[1][0];
 out[2] = axes[2][0];
 out[3] = 0;

 out[4] = axes[0][1];
 out[5] = axes[1][1];
 out[6] = axes[2][1];
 out[7] = 0;

 out[8] = axes[0][2];
 out[9] = axes[1][2];
 out[10] = axes[2][2];
 out[11] = 0;

 out[12] = -DotProduct(origin, axes[0]);
 out[13] = -DotProduct(origin, axes[1]);
 out[14] = -DotProduct(origin, axes[2]);
 out[15] = 1;
}
