
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec3_t ;
typedef size_t* picoIndexIter_t ;


 int _pico_add_vec (float*,float*,float*) ;
 int _pico_cross_vec (float*,float*,float*) ;
 int _pico_subtract_vec (float*,float*,float*) ;

void _pico_triangles_generate_weighted_normals(picoIndexIter_t first, picoIndexIter_t end, picoVec3_t* xyz, picoVec3_t* normals) {
 for (; first != end; first += 3)
 {
  {
   int j = 0;
   for (; j < 3; ++j)
   {
    float* normal = normals[*(first + j)];

    picoVec3_t weightedNormal;
    {
     float* a = xyz[*(first + ((j + 0) % 3))];
     float* b = xyz[*(first + ((j + 1) % 3))];
     float* c = xyz[*(first + ((j + 2) % 3))];
     picoVec3_t ba, ca;
     _pico_subtract_vec(b, a, ba);
     _pico_subtract_vec(c, a, ca);
     _pico_cross_vec(ca, ba, weightedNormal);
    }

    _pico_add_vec(weightedNormal, normal, normal);
   }
  }
 }
}
