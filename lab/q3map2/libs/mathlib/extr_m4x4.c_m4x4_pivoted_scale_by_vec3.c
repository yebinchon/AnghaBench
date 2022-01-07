
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int const vec3_t ;
typedef int m4x4_t ;


 int VectorNegative (int const,int const) ;
 int m4x4_scale_by_vec3 (int ,int const) ;
 int m4x4_translate_by_vec3 (int ,int const) ;

void m4x4_pivoted_scale_by_vec3( m4x4_t matrix, const vec3_t scale, const vec3_t pivotpoint ){
 vec3_t vec3_temp;
 VectorNegative( pivotpoint, vec3_temp );

 m4x4_translate_by_vec3( matrix, pivotpoint );
 m4x4_scale_by_vec3( matrix, scale );
 m4x4_translate_by_vec3( matrix, vec3_temp );
}
