
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef float* m4x4_t ;



void m4x4_transform_normal( const m4x4_t matrix, vec3_t normal ){
 float out1, out2, out3;

 out1 = matrix[0] * normal[0];
 out2 = matrix[1] * normal[0];
 out3 = matrix[2] * normal[0];
 out1 += matrix[4] * normal[1];
 out2 += matrix[5] * normal[1];
 out3 += matrix[6] * normal[1];
 out1 += matrix[8] * normal[2];
 out2 += matrix[9] * normal[2];
 out3 += matrix[10] * normal[2];

 normal[0] = out1;
 normal[1] = out2;
 normal[2] = out3;
}
