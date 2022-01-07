
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;


 int MatchToken (char*) ;
 int Parse1DMatrix (int,int *) ;

void Parse2DMatrix( int y, int x, vec_t *m ) {
 int i;

 MatchToken( "(" );

 for ( i = 0 ; i < y ; i++ ) {
  Parse1DMatrix( x, m + i * x );
 }

 MatchToken( ")" );
}
