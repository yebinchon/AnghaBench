
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;


 int VectorNormalizeFast (int ) ;
 float __frsqrte (float) ;

void VectorArrayNormalize(vec4_t *normals, unsigned int count)
{
    while (count--) {
        VectorNormalizeFast(normals[0]);
        normals++;
    }


}
