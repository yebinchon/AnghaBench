
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;


 int DotProduct (int *,int *) ;

void VectorRotate( vec3_t in, vec3_t matrix[3], vec3_t out )
{
 out[0] = DotProduct( in, matrix[0] );
 out[1] = DotProduct( in, matrix[1] );
 out[2] = DotProduct( in, matrix[2] );
}
