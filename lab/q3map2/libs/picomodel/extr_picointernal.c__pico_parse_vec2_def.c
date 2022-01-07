
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec2_t ;
typedef int picoParser_t ;


 int _pico_copy_vec2 (float*,float*) ;
 char* _pico_parse (int *,int ) ;
 scalar_t__ atof (char*) ;

int _pico_parse_vec2_def( picoParser_t *p, picoVec2_t out, picoVec2_t def ){
 char *token;
 int i;


 if ( p == ((void*)0) || out == ((void*)0) ) {
  return 0;
 }


 _pico_copy_vec2( def,out );


 for ( i = 0; i < 2; i++ )
 {
  token = _pico_parse( p,0 );
  if ( token == ((void*)0) ) {
   _pico_copy_vec2( def,out );
   return 0;
  }
  out[ i ] = (float) atof( token );
 }

 return 1;
}
