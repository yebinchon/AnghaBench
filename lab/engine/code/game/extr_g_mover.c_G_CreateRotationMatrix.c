
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int AngleVectors (int ,int ,int ,int ) ;
 int VectorInverse (int ) ;

void G_CreateRotationMatrix(vec3_t angles, vec3_t matrix[3]) {
 AngleVectors(angles, matrix[0], matrix[1], matrix[2]);
 VectorInverse(matrix[1]);
}
