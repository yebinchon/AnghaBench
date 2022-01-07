
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoVec3_t ;


 int FLOAT_EQUAL_EPSILON (int ,double,int ) ;
 int NORMAL_UNIT_LENGTH_EPSILON ;
 int _pico_length_vec (int ) ;

int _pico_normal_is_unit_length(picoVec3_t normal) {
 return FLOAT_EQUAL_EPSILON(_pico_length_vec(normal), 1.0, NORMAL_UNIT_LENGTH_EPSILON);
}
