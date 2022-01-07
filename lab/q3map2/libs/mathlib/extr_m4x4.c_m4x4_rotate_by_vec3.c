
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int m4x4_t ;
typedef int eulerOrder_t ;


 int m4x4_multiply_by_m4x4 (int ,int ) ;
 int m4x4_rotation_for_vec3 (int ,int const,int ) ;

void m4x4_rotate_by_vec3( m4x4_t matrix, const vec3_t euler, eulerOrder_t order ){
 m4x4_t temp;
 m4x4_rotation_for_vec3( temp, euler, order );
 m4x4_multiply_by_m4x4( matrix, temp );
}
