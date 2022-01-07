
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* vec3_t ;
typedef float byte ;


 int VectorScale (float const*,float,float*) ;
 float lightmapCompensate ;
 float lightmapGamma ;
 float pow (float,float) ;

void ColorToBytes( const float *color, byte *colorBytes, float scale ){
 int i;
 float max, gamma;
 vec3_t sample;



 if ( scale <= 0.0f ) {
  scale = 1.0f;
 }


 VectorScale( color, scale, sample );


 gamma = 1.0f / lightmapGamma;
 for ( i = 0; i < 3; i++ )
 {

  if ( sample[ i ] < 0.0f ) {
   sample[ i ] = 0.0f;
   continue;
  }


  sample[ i ] = pow( sample[ i ] / 255.0f, gamma ) * 255.0f;
 }


 max = sample[ 0 ];
 if ( sample[ 1 ] > max ) {
  max = sample[ 1 ];
 }
 if ( sample[ 2 ] > max ) {
  max = sample[ 2 ];
 }
 if ( max > 255.0f ) {
  VectorScale( sample, ( 255.0f / max ), sample );
 }


 VectorScale( sample, ( 1.0f / lightmapCompensate ), sample );


 colorBytes[ 0 ] = sample[ 0 ];
 colorBytes[ 1 ] = sample[ 1 ];
 colorBytes[ 2 ] = sample[ 2 ];
}
