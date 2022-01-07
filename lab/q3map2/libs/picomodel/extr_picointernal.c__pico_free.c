
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pico_ptr_free (void*) ;

void _pico_free( void *ptr ){

 if ( ptr == ((void*)0) ) {
  return;
 }
 if ( _pico_ptr_free == ((void*)0) ) {
  return;
 }


 _pico_ptr_free( ptr );
}
