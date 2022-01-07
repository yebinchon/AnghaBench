
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int picoMemStream_t ;


 int _pico_free (int *) ;

void _pico_free_memstream( picoMemStream_t *s ){

 if ( s == ((void*)0) ) {
  return;
 }


 _pico_free( s );
}
