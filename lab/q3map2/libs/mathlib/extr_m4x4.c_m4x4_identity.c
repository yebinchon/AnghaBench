
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int* m4x4_t ;



void m4x4_identity( m4x4_t matrix ){
 matrix[1] = matrix[2] = matrix[3] =
        matrix[4] = matrix[6] = matrix[7] =
               matrix[8] = matrix[9] = matrix[11] =
                      matrix[12] = matrix[13] = matrix[14] = 0;

 matrix[0] = matrix[5] = matrix[10] = matrix[15] = 1;
}
