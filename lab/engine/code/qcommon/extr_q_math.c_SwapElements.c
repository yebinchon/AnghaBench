
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;



void SwapElements(vec3_t matrix[3], int i, int j) {
 float temp = matrix[i][j];
 matrix[i][j] = matrix[j][i];
 matrix[j][i] = temp;
}
