
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float** tcMod_t ;


 float Q_PI ;
 int TCModIdentity (float**) ;
 int TCModMultiply (float**,float**,float**) ;
 float cos (float) ;
 int memcpy (float**,float**,int) ;
 float sin (float) ;

void TCModRotate( tcMod_t mod, float euler ){
 tcMod_t old, temp;
 float radians, sinv, cosv;


 memcpy( old, mod, sizeof( tcMod_t ) );
 TCModIdentity( temp );

 radians = euler / 180 * Q_PI;
 sinv = sin( radians );
 cosv = cos( radians );

 temp[ 0 ][ 0 ] = cosv; temp[ 0 ][ 1 ] = -sinv;
 temp[ 1 ][ 0 ] = sinv; temp[ 1 ][ 1 ] = cosv;

 TCModMultiply( old, temp, mod );
}
