
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 float DotProduct (int ,int ) ;

float VectorLengthSquared(vec3_t v) {
 return DotProduct(v, v);
}
