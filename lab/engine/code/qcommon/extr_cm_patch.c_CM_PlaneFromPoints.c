
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * vec4_t ;
typedef int vec3_t ;
typedef int qboolean ;


 int CrossProduct (int ,int ,int *) ;
 int DotProduct (int ,int *) ;
 scalar_t__ VectorNormalize (int *) ;
 int VectorSubtract (int ,int ,int ) ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CM_PlaneFromPoints( vec4_t plane, vec3_t a, vec3_t b, vec3_t c ) {
 vec3_t d1, d2;

 VectorSubtract( b, a, d1 );
 VectorSubtract( c, a, d2 );
 CrossProduct( d2, d1, plane );
 if ( VectorNormalize( plane ) == 0 ) {
  return qfalse;
 }

 plane[3] = DotProduct( a, plane );
 return qtrue;
}
