
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int vec3_t ;
typedef int m4x4_t ;


 int m4x4_multiply_by_m4x4 (int ,int ) ;
 int m4x4_rotation_for_axisangle (int ,int const,int ) ;

void m4x4_rotate_by_axisangle( m4x4_t matrix, const vec3_t axis, vec_t angle ){
 m4x4_t temp;
 m4x4_rotation_for_axisangle( temp, axis, angle );
 m4x4_multiply_by_m4x4( matrix, temp );
}
