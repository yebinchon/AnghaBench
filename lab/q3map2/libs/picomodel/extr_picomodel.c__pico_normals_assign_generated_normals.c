
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * picoNormalIter_t ;


 int _pico_copy_vec (int ,int ) ;
 int _pico_normal_is_unit_length (int ) ;
 int _pico_normal_within_tolerance (int ,int ) ;

void _pico_normals_assign_generated_normals(picoNormalIter_t first, picoNormalIter_t last, picoNormalIter_t generated) {
 for (; first != last; ++first, ++generated)
 {
  if (!_pico_normal_is_unit_length(*first) || !_pico_normal_within_tolerance(*first, *generated)) {
   _pico_copy_vec(*generated, *first);
  }
 }
}
