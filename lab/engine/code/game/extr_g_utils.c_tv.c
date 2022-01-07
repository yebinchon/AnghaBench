
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;



float *tv( float x, float y, float z ) {
 static int index;
 static vec3_t vecs[8];
 float *v;



 v = vecs[index];
 index = (index + 1)&7;

 v[0] = x;
 v[1] = y;
 v[2] = z;

 return v;
}
