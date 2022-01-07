
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 float bezier (float,float,float,float,float) ;
 float fabs (float) ;

__attribute__((used)) static float bez2_time( float x0, float x1, float x2, float x3, float time,
      float *t0, float *t1 ){
 float v, t;

 t = *t0 + ( *t1 - *t0 ) * 0.5f;
 v = bezier( x0, x1, x2, x3, t );
 if ( fabs( time - v ) > .0001f ) {
  if ( v > time ) {
   *t1 = t;
  }
  else{
   *t0 = t;
  }
  return bez2_time( x0, x1, x2, x3, time, t0, t1 );
 }
 else{
  return t;
 }
}
