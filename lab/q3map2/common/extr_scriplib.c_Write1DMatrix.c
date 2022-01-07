
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;

void Write1DMatrix( FILE *f, int x, vec_t *m ) {
 int i;

 fprintf( f, "( " );
 for ( i = 0 ; i < x ; i++ ) {
  if ( m[i] == (int)m[i] ) {
   fprintf( f, "%i ", (int)m[i] );
  }
  else {
   fprintf( f, "%f ", m[i] );
  }
 }
 fprintf( f, ")" );
}
