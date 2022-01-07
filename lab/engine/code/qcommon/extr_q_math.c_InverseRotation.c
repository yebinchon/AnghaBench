
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef scalar_t__ qboolean ;


 int AngleVectors (int const,int ,int ,int ) ;
 int SwapElements (int *,int,int) ;
 int VectorCopy (int ,int ) ;
 int VectorInverse (int ) ;
 int VectorRotate (int ,int *,int ) ;
 scalar_t__ qtrue ;

void InverseRotation(const vec3_t angles, vec3_t point, qboolean right_handed) {
 vec3_t matrix[3];
 vec3_t tvec;
 AngleVectors(angles, matrix[0], matrix[1], matrix[2]);
 if ( right_handed == qtrue ) VectorInverse(matrix[1]);

 SwapElements(matrix, 0, 1);
 SwapElements(matrix, 0, 2);
 SwapElements(matrix, 1, 2);


 VectorCopy(point, tvec);
 VectorRotate(tvec, matrix, point);
}
