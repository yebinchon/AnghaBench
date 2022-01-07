
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoVec3_t ;


 float _pico_dot_vec (int ,int ) ;

int _pico_normal_within_tolerance(picoVec3_t normal, picoVec3_t other) {
 return _pico_dot_vec(normal, other) > 0.0f;
}
