
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _pico_ptr_load_file (char*,unsigned char**,int*) ;

void _pico_load_file( char *name, unsigned char **buffer, int *bufSize ){

 if ( name == ((void*)0) ) {
  *bufSize = -1;
  return;
 }
 if ( _pico_ptr_load_file == ((void*)0) ) {
  *bufSize = -1;
  return;
 }


 _pico_ptr_load_file( name,buffer,bufSize );
}
