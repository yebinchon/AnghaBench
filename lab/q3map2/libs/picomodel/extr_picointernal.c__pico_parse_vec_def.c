
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef float* picoVec3_t ;
typedef int picoParser_t ;


 int _pico_copy_vec (float*,float*) ;
 char* _pico_parse (int *,int ) ;
 scalar_t__ atof (char*) ;

int _pico_parse_vec_def( picoParser_t *p, picoVec3_t out, picoVec3_t def ){
 char *token;
 int i;


 if ( p == ((void*)0) || out == ((void*)0) ) {
  return 0;
 }


 _pico_copy_vec( def,out );


 for ( i = 0; i < 3; i++ )
 {
  token = _pico_parse( p,0 );
  if ( token == ((void*)0) ) {
   _pico_copy_vec( def,out );
   return 0;
  }
  out[ i ] = (float) atof( token );
 }

 return 1;
}
