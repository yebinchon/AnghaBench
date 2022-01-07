
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float vec_t ;
typedef float* vec3_t ;


 float Q_PI ;
 int VectorCopy (float*,float*) ;
 int cos (float) ;
 int sin (float) ;

void VectorRotate( vec3_t vIn, vec3_t vRotation, vec3_t out ){
 vec3_t vWork, va;
 int nIndex[3][2];
 int i;

 VectorCopy( vIn, va );
 VectorCopy( va, vWork );
 nIndex[0][0] = 1; nIndex[0][1] = 2;
 nIndex[1][0] = 2; nIndex[1][1] = 0;
 nIndex[2][0] = 0; nIndex[2][1] = 1;

 for ( i = 0; i < 3; i++ )
 {
  if ( vRotation[i] != 0 ) {
   float dAngle = vRotation[i] * Q_PI / 180.0f;
   float c = (vec_t)cos( dAngle );
   float s = (vec_t)sin( dAngle );
   vWork[nIndex[i][0]] = va[nIndex[i][0]] * c - va[nIndex[i][1]] * s;
   vWork[nIndex[i][1]] = va[nIndex[i][0]] * s + va[nIndex[i][1]] * c;
  }
  VectorCopy( vWork, va );
 }
 VectorCopy( vWork, out );
}
