
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int m4x4_t ;
typedef int eulerOrder_t ;


 int VectorAdd (int const,int const,int ) ;
 int VectorNegative (int const,int ) ;
 int m4x4_rotate_by_vec3 (int ,int const,int ) ;
 int m4x4_scale_by_vec3 (int ,int const) ;
 int m4x4_translate_by_vec3 (int ,int ) ;

void m4x4_pivoted_transform_by_vec3( m4x4_t matrix, const vec3_t translation, const vec3_t euler, eulerOrder_t order, const vec3_t scale, const vec3_t pivotpoint ){
 vec3_t vec3_temp;

 VectorAdd( pivotpoint, translation, vec3_temp );
 m4x4_translate_by_vec3( matrix, vec3_temp );
 m4x4_rotate_by_vec3( matrix, euler, order );
 m4x4_scale_by_vec3( matrix, scale );
 VectorNegative( pivotpoint, vec3_temp );
 m4x4_translate_by_vec3( matrix, vec3_temp );
}
