
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;


 float cos (float) ;
 float sin (float) ;

void VectorPolar( vec3_t v, float radius, float theta, float phi ){
 v[0] = (float)( radius * cos( theta ) * cos( phi ) );
 v[1] = (float)( radius * sin( theta ) * cos( phi ) );
 v[2] = (float)( radius * sin( phi ) );
}
