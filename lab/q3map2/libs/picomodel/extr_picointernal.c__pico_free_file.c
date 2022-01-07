
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pico_ptr_free_file (void*) ;
 int free (void*) ;

void _pico_free_file( void *buffer ){

 if ( buffer == ((void*)0) ) {
  return;
 }


 if ( _pico_ptr_free_file == ((void*)0) ) {
  free( buffer );
  return;
 }

 _pico_ptr_free_file( buffer );
}
