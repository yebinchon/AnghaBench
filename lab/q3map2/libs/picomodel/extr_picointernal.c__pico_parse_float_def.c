
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoParser_t ;


 char* _pico_parse (int *,int ) ;
 scalar_t__ atof (char*) ;

int _pico_parse_float_def( picoParser_t *p, float *out, float def ){
 char *token;


 if ( p == ((void*)0) || out == ((void*)0) ) {
  return 0;
 }


 *out = def;
 token = _pico_parse( p,0 );
 if ( token == ((void*)0) ) {
  return 0;
 }
 *out = (float) atof( token );


 return 1;
}
