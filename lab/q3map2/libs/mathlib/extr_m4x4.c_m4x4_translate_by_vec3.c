
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;
typedef int m4x4_t ;


 int m4x4_multiply_by_m4x4 (int ,int ) ;
 int m4x4_translation_for_vec3 (int ,int const) ;

void m4x4_translate_by_vec3( m4x4_t matrix, const vec3_t translation ){
 m4x4_t temp;
 m4x4_translation_for_vec3( temp, translation );
 m4x4_multiply_by_m4x4( matrix, temp );
}
