
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _pico_ptr_malloc (size_t) ;
 int memset (void*,int ,size_t) ;

void *_pico_calloc( size_t num, size_t size ){
 void *ptr;


 if ( num == 0 || size == 0 ) {
  return ((void*)0);
 }
 if ( _pico_ptr_malloc == ((void*)0) ) {
  return ((void*)0);
 }


 ptr = _pico_ptr_malloc( num * size );
 if ( ptr == ((void*)0) ) {
  return ((void*)0);
 }


 memset( ptr,0,num * size );


 return ptr;
}
