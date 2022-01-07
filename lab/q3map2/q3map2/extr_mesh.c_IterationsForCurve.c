
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pow (int,int) ;

int IterationsForCurve( float len, int subdivisions ){
 int iterations, facets;



 for ( iterations = 0; iterations < 3; iterations++ )
 {
  facets = subdivisions * 16 * pow( 2, iterations );
  if ( facets >= len ) {
   break;
  }
 }


 return iterations;
}
