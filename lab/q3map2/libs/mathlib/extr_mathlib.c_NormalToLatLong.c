
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__* vec3_t ;
typedef int byte ;


 float RAD2DEG (int ) ;
 int acos (scalar_t__) ;
 int atan2 (scalar_t__,scalar_t__) ;

void NormalToLatLong( const vec3_t normal, byte bytes[2] ) {

 if ( normal[0] == 0 && normal[1] == 0 ) {
  if ( normal[2] > 0 ) {
   bytes[0] = 0;
   bytes[1] = 0;
  }
  else {
   bytes[0] = 128;
   bytes[1] = 0;
  }
 }
 else {
  int a, b;

  a = (int)( RAD2DEG( atan2( normal[1], normal[0] ) ) * ( 255.0f / 360.0f ) );
  a &= 0xff;

  b = (int)( RAD2DEG( acos( normal[2] ) ) * ( 255.0f / 360.0f ) );
  b &= 0xff;

  bytes[0] = b;
  bytes[1] = a;
 }
}
