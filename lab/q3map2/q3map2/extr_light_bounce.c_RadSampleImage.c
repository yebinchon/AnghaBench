
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qboolean ;
typedef float byte ;


 int VectorCopy (float*,float*) ;
 int qfalse ;
 int qtrue ;

qboolean RadSampleImage( byte *pixels, int width, int height, float st[ 2 ], float color[ 4 ] ){
 float sto[ 2 ];
 int x, y;



 color[ 0 ] = color[ 1 ] = color[ 2 ] = color[ 3 ] = 255;


 if ( pixels == ((void*)0) || width < 1 || height < 1 ) {
  return qfalse;
 }


 sto[ 0 ] = st[ 0 ];
 while ( sto[ 0 ] < 0.0f )
  sto[ 0 ] += 1.0f;
 sto[ 1 ] = st[ 1 ];
 while ( sto[ 1 ] < 0.0f )
  sto[ 1 ] += 1.0f;


 x = ( (float) width * sto[ 0 ] ) + 0.5f;
 x %= width;
 y = ( (float) height * sto[ 1 ] ) + 0.5f;
 y %= height;


 pixels += ( y * width * 4 ) + ( x * 4 );
 VectorCopy( pixels, color );
 color[ 3 ] = pixels[ 3 ];
 return qtrue;
}
