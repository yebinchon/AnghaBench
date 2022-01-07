
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec3_t ;


 int AngleVectors (int const,int ,int ,int ) ;
 int VectorSubtract (int ,int ,int ) ;
 int vec3_origin ;

void AnglesToAxis( const vec3_t angles, vec3_t axis[3] ) {
 vec3_t right;


 AngleVectors( angles, axis[0], right, axis[2] );
 VectorSubtract( vec3_origin, right, axis[1] );
}
