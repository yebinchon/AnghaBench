
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef float* vec4_t ;
typedef float* vec3_t ;
struct TYPE_4__ {int cluster; float* origin; float* normal; float* color; } ;
typedef TYPE_1__ trace_t ;
typedef int rawLightmap_t ;


 int LightContributionToSample (TYPE_1__*) ;
 int SubmapRawLuxel (int *,int,int,float,float,int*,float*,float*) ;
 int VectorAdd (float*,float*,float*) ;
 int VectorClear (float*) ;
 int VectorCopy (float*,float*) ;
 float lightSamples ;

__attribute__((used)) static void SubsampleRawLuxel_r( rawLightmap_t *lm, trace_t *trace, vec3_t sampleOrigin, int x, int y, float bias, float *lightLuxel ){
 int b, samples, mapped, lighted;
 int cluster[ 4 ];
 vec4_t luxel[ 4 ];
 vec3_t origin[ 4 ], normal[ 4 ];
 float biasDirs[ 4 ][ 2 ] = { { -1.0f, -1.0f }, { 1.0f, -1.0f }, { -1.0f, 1.0f }, { 1.0f, 1.0f } };
 vec3_t color, total;



 if ( lightLuxel[ 3 ] >= lightSamples ) {
  return;
 }


 VectorClear( total );
 mapped = 0;
 lighted = 0;


 for ( b = 0; b < 4; b++ )
 {

  VectorCopy( sampleOrigin, origin[ b ] );


  if ( !SubmapRawLuxel( lm, x, y, ( bias * biasDirs[ b ][ 0 ] ), ( bias * biasDirs[ b ][ 1 ] ), &cluster[ b ], origin[ b ], normal[ b ] ) ) {
   cluster[ b ] = -1;
   continue;
  }
  mapped++;


  luxel[ b ][ 3 ] = lightLuxel[ 3 ] + 1.0f;


  trace->cluster = *cluster;
  VectorCopy( origin[ b ], trace->origin );
  VectorCopy( normal[ b ], trace->normal );



  LightContributionToSample( trace );


  VectorCopy( trace->color, luxel[ b ] );
  VectorAdd( total, trace->color, total );
  if ( ( luxel[ b ][ 0 ] + luxel[ b ][ 1 ] + luxel[ b ][ 2 ] ) > 0.0f ) {
   lighted++;
  }
 }


 if ( ( lightLuxel[ 3 ] + 1.0f ) < lightSamples &&
   ( total[ 0 ] > 4.0f || total[ 1 ] > 4.0f || total[ 2 ] > 4.0f ) &&
   lighted != 0 && lighted != mapped ) {
  for ( b = 0; b < 4; b++ )
  {
   if ( cluster[ b ] < 0 ) {
    continue;
   }
   SubsampleRawLuxel_r( lm, trace, origin[ b ], x, y, ( bias * 0.25f ), luxel[ b ] );
  }
 }




 VectorCopy( lightLuxel, color );
 samples = 1;
 for ( b = 0; b < 4; b++ )
 {
  if ( cluster[ b ] < 0 ) {
   continue;
  }
  VectorAdd( color, luxel[ b ], color );
  samples++;
 }


 if ( samples > 0 ) {

  color[ 0 ] /= samples;
  color[ 1 ] /= samples;
  color[ 2 ] /= samples;


  VectorCopy( color, lightLuxel );
  lightLuxel[ 3 ] += 1.0f;
 }
}
