
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec3_t ;



void VectorInverse( vec3_t v ){
 v[0] = -v[0];
 v[1] = -v[1];
 v[2] = -v[2];
}
