
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoVec_t ;
typedef int * picoVec4_t ;
typedef int picoVec3_t ;


 int _pico_cross_vec (int ,int ,int *) ;
 int _pico_dot_vec (int ,int *) ;
 int _pico_normalize_vec (int *) ;
 int _pico_subtract_vec (int ,int ,int ) ;

picoVec_t _pico_calc_plane( picoVec4_t plane, picoVec3_t a, picoVec3_t b, picoVec3_t c ){
 picoVec3_t ba, ca;

 _pico_subtract_vec( b, a, ba );
 _pico_subtract_vec( c, a, ca );
 _pico_cross_vec( ca, ba, plane );
 plane[ 3 ] = _pico_dot_vec( a, plane );
 return _pico_normalize_vec( plane );
}
