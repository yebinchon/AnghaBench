
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* m4x4_t ;



void m4x4_orthogonal_invert( m4x4_t matrix ){
 float temp;

 temp = -matrix[3];
 matrix[3] = matrix[12];
 matrix[12] = temp;

 temp = -matrix[7];
 matrix[7] = matrix[13];
 matrix[13] = temp;

 temp = -matrix[11];
 matrix[11] = matrix[14];
 matrix[14] = temp;
}
