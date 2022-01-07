
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 void* _pico_alloc (size_t) ;
 int _pico_free (void*) ;
 int * _pico_ptr_malloc ;
 int memcpy (void*,void*,size_t) ;

void *_pico_realloc( void **ptr, size_t oldSize, size_t newSize ){
 void *ptr2;


 if ( ptr == ((void*)0) ) {
  return ((void*)0);
 }
 if ( newSize < oldSize ) {
  return *ptr;
 }
 if ( _pico_ptr_malloc == ((void*)0) ) {
  return ((void*)0);
 }


 ptr2 = _pico_alloc( newSize );
 if ( ptr2 == ((void*)0) ) {
  return ((void*)0);
 }


 if ( *ptr != ((void*)0) ) {
  memcpy( ptr2, *ptr, oldSize );
  _pico_free( *ptr );
 }


 *ptr = ptr2;
 return *ptr;
}
