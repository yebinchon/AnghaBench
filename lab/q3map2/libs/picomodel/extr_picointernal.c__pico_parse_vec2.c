
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec2_t ;
typedef int picoParser_t ;


 char* _pico_parse (int *,int ) ;
 int _pico_zero_vec2 (float*) ;
 scalar_t__ atof (char*) ;

int _pico_parse_vec2( picoParser_t *p, picoVec2_t out ){
 char *token;
 int i;


 if ( p == ((void*)0) || out == ((void*)0) ) {
  return 0;
 }


 _pico_zero_vec2( out );


 for ( i = 0; i < 2; i++ )
 {
  token = _pico_parse( p,0 );
  if ( token == ((void*)0) ) {
   _pico_zero_vec2( out );
   return 0;
  }
  out[ i ] = (float) atof( token );
 }

 return 1;
}
