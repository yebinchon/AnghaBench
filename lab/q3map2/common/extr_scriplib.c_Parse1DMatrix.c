
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vec_t ;


 int GetToken (int ) ;
 int MatchToken (char*) ;
 int atof (int ) ;
 int qfalse ;
 int token ;

void Parse1DMatrix( int x, vec_t *m ) {
 int i;

 MatchToken( "(" );

 for ( i = 0 ; i < x ; i++ ) {
  GetToken( qfalse );
  m[i] = atof( token );
 }

 MatchToken( ")" );
}
