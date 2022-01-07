
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;


 float POINT_EPSILON ;
 int qfalse ;
 int qtrue ;

__attribute__((used)) static qboolean CM_ComparePoints( float *a, float *b ) {
 float d;

 d = a[0] - b[0];
 if ( d < -POINT_EPSILON || d > POINT_EPSILON ) {
  return qfalse;
 }
 d = a[1] - b[1];
 if ( d < -POINT_EPSILON || d > POINT_EPSILON ) {
  return qfalse;
 }
 d = a[2] - b[2];
 if ( d < -POINT_EPSILON || d > POINT_EPSILON ) {
  return qfalse;
 }
 return qtrue;
}
