
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef float* vec3_t ;
struct TYPE_5__ {scalar_t__ cluster; int origin; int hit; scalar_t__ opaque; int end; int normal; } ;
typedef TYPE_1__ trace_t ;


 int CrossProduct (float*,float*,float*) ;
 float DEG2RAD (float) ;
 float DIRT_CONE_ANGLE ;
 float Random () ;
 int SetupTrace (TYPE_1__*) ;
 int TraceLine (TYPE_1__*) ;
 int VectorCopy (int ,float*) ;
 float VectorLength (float*) ;
 int VectorMA (int ,float,float*,int ) ;
 int VectorNormalize (float*,float*) ;
 int VectorSet (float*,float,float,float) ;
 int VectorSubtract (int ,int ,float*) ;
 float cos (float) ;
 float dirtDepth ;
 int dirtGain ;
 int dirtMode ;
 float dirtScale ;
 float** dirtVectors ;
 int dirty ;
 int numDirtVectors ;
 float pow (float,int ) ;
 float sin (float) ;

float DirtForSample( trace_t *trace ){
 int i;
 float gatherDirt, outDirt, angle, elevation, ooDepth;
 vec3_t normal, worldUp, myUp, myRt, temp, direction, displacement;



 if ( !dirty ) {
  return 1.0f;
 }
 if ( trace == ((void*)0) || trace->cluster < 0 ) {
  return 0.0f;
 }


 gatherDirt = 0.0f;
 ooDepth = 1.0f / dirtDepth;
 VectorCopy( trace->normal, normal );


 if ( normal[ 0 ] == 0.0f && normal[ 1 ] == 0.0f ) {
  if ( normal[ 2 ] == -1.0f ) {
   VectorSet( myRt, -1.0f, 0.0f, 0.0f );
   VectorSet( myUp, 0.0f, 1.0f, 0.0f );
  }
  else {
   VectorSet( myRt, 1.0f, 0.0f, 0.0f );
   VectorSet( myUp, 0.0f, 1.0f, 0.0f );
  }
 }
 else
 {
  VectorSet( worldUp, 0.0f, 0.0f, 1.0f );
  CrossProduct( normal, worldUp, myRt );
  VectorNormalize( myRt, myRt );
  CrossProduct( myRt, normal, myUp );
  VectorNormalize( myUp, myUp );
 }


 if ( dirtMode == 1 ) {

  for ( i = 0; i < numDirtVectors; i++ )
  {

   angle = Random() * DEG2RAD( 360.0f );
   elevation = Random() * DEG2RAD( DIRT_CONE_ANGLE );
   temp[ 0 ] = cos( angle ) * sin( elevation );
   temp[ 1 ] = sin( angle ) * sin( elevation );
   temp[ 2 ] = cos( elevation );


   direction[ 0 ] = myRt[ 0 ] * temp[ 0 ] + myUp[ 0 ] * temp[ 1 ] + normal[ 0 ] * temp[ 2 ];
   direction[ 1 ] = myRt[ 1 ] * temp[ 0 ] + myUp[ 1 ] * temp[ 1 ] + normal[ 1 ] * temp[ 2 ];
   direction[ 2 ] = myRt[ 2 ] * temp[ 0 ] + myUp[ 2 ] * temp[ 1 ] + normal[ 2 ] * temp[ 2 ];


   VectorMA( trace->origin, dirtDepth, direction, trace->end );
   SetupTrace( trace );


   TraceLine( trace );
   if ( trace->opaque ) {
    VectorSubtract( trace->hit, trace->origin, displacement );
    gatherDirt += 1.0f - ooDepth * VectorLength( displacement );
   }
  }
 }
 else
 {

  for ( i = 0; i < numDirtVectors; i++ )
  {

   direction[ 0 ] = myRt[ 0 ] * dirtVectors[ i ][ 0 ] + myUp[ 0 ] * dirtVectors[ i ][ 1 ] + normal[ 0 ] * dirtVectors[ i ][ 2 ];
   direction[ 1 ] = myRt[ 1 ] * dirtVectors[ i ][ 0 ] + myUp[ 1 ] * dirtVectors[ i ][ 1 ] + normal[ 1 ] * dirtVectors[ i ][ 2 ];
   direction[ 2 ] = myRt[ 2 ] * dirtVectors[ i ][ 0 ] + myUp[ 2 ] * dirtVectors[ i ][ 1 ] + normal[ 2 ] * dirtVectors[ i ][ 2 ];


   VectorMA( trace->origin, dirtDepth, direction, trace->end );
   SetupTrace( trace );


   TraceLine( trace );
   if ( trace->opaque ) {
    VectorSubtract( trace->hit, trace->origin, displacement );
    gatherDirt += 1.0f - ooDepth * VectorLength( displacement );
   }
  }
 }


 VectorMA( trace->origin, dirtDepth, normal, trace->end );
 SetupTrace( trace );


 TraceLine( trace );
 if ( trace->opaque ) {
  VectorSubtract( trace->hit, trace->origin, displacement );
  gatherDirt += 1.0f - ooDepth * VectorLength( displacement );
 }


 if ( gatherDirt <= 0.0f ) {
  return 1.0f;
 }


 outDirt = pow( gatherDirt / ( numDirtVectors + 1 ), dirtGain );
 if ( outDirt > 1.0f ) {
  outDirt = 1.0f;
 }


 outDirt *= dirtScale;
 if ( outDirt > 1.0f ) {
  outDirt = 1.0f;
 }


 return 1.0f - outDirt;
}
