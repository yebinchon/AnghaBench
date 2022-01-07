
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec4_t ;
typedef int m4x4_t ;


 int m4x4_multiply_by_m4x4 (int ,int ) ;
 int m4x4_rotation_for_quat (int ,int const) ;

void m4x4_rotate_by_quat( m4x4_t matrix, const vec4_t rotation ){
 m4x4_t temp;
 m4x4_rotation_for_quat( temp, rotation );
 m4x4_multiply_by_m4x4( matrix, temp );
}
