
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int byte ;


 int LittleShort (short) ;

void S_ByteSwapRawSamples( int samples, int width, int s_channels, const byte *data ) {
 int i;

 if ( width != 2 ) {
  return;
 }
 if ( LittleShort( 256 ) == 256 ) {
  return;
 }

 if ( s_channels == 2 ) {
  samples <<= 1;
 }
 for ( i = 0 ; i < samples ; i++ ) {
  ((short *)data)[i] = LittleShort( ((short *)data)[i] );
 }
}
