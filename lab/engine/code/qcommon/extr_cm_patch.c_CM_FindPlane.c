
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__* plane; int signbits; } ;


 int CM_PlaneFromPoints (float*,float*,float*,float*) ;
 int CM_SignbitsForNormal (float*) ;
 int Com_Error (int ,char*) ;
 scalar_t__ DotProduct (float*,scalar_t__*) ;
 int ERR_DROP ;
 int MAX_PATCH_PLANES ;
 float PLANE_TRI_EPSILON ;
 int Vector4Copy (float*,scalar_t__*) ;
 int numPlanes ;
 TYPE_1__* planes ;

__attribute__((used)) static int CM_FindPlane( float *p1, float *p2, float *p3 ) {
 float plane[4];
 int i;
 float d;

 if ( !CM_PlaneFromPoints( plane, p1, p2, p3 ) ) {
  return -1;
 }


 for ( i = 0 ; i < numPlanes ; i++ ) {
  if ( DotProduct( plane, planes[i].plane ) < 0 ) {
   continue;
  }

  d = DotProduct( p1, planes[i].plane ) - planes[i].plane[3];
  if ( d < -PLANE_TRI_EPSILON || d > PLANE_TRI_EPSILON ) {
   continue;
  }

  d = DotProduct( p2, planes[i].plane ) - planes[i].plane[3];
  if ( d < -PLANE_TRI_EPSILON || d > PLANE_TRI_EPSILON ) {
   continue;
  }

  d = DotProduct( p3, planes[i].plane ) - planes[i].plane[3];
  if ( d < -PLANE_TRI_EPSILON || d > PLANE_TRI_EPSILON ) {
   continue;
  }


  return i;
 }


 if ( numPlanes == MAX_PATCH_PLANES ) {
  Com_Error( ERR_DROP, "MAX_PATCH_PLANES" );
 }

 Vector4Copy( plane, planes[numPlanes].plane );
 planes[numPlanes].signbits = CM_SignbitsForNormal( plane );

 numPlanes++;

 return numPlanes-1;
}
