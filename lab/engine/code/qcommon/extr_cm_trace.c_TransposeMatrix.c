
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;



void TransposeMatrix( vec3_t matrix[3], vec3_t transpose[3]) {
 int i, j;
 for (i = 0; i < 3; i++) {
  for (j = 0; j < 3; j++) {
   transpose[i][j] = matrix[j][i];
  }
 }
}
