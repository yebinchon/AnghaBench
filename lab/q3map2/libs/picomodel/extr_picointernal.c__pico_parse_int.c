
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoParser_t ;


 char* _pico_parse (int *,int ) ;
 int atoi (char*) ;

int _pico_parse_int( picoParser_t *p, int *out ){
 char *token;


 if ( p == ((void*)0) || out == ((void*)0) ) {
  return 0;
 }


 *out = 0;
 token = _pico_parse( p,0 );
 if ( token == ((void*)0) ) {
  return 0;
 }
 *out = atoi( token );


 return 1;
}
