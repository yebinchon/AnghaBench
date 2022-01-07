
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int dot (float*,float*) ;
 scalar_t__ sqrt (int ) ;

void normalize( float v[] ){
 float r;

 r = ( float ) sqrt( dot( v, v ) );
 if ( r > 0 ) {
  v[ 0 ] /= r;
  v[ 1 ] /= r;
  v[ 2 ] /= r;
 }
}
