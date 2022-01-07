
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * picoNormalIter_t ;


 int _pico_normalize_vec (int ) ;

void _pico_normals_normalize(picoNormalIter_t first, picoNormalIter_t last) {
 for (; first != last; ++first)
 {
  _pico_normalize_vec(*first);
 }
}
