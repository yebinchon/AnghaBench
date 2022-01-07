
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*,size_t) ;
 void* calloc (size_t,int) ;

void *safe_malloc( size_t size ){
 void *p;

 p = calloc( size, 1 );
 if ( !p ) {
  Error( "safe_malloc failed on allocation of %i bytes", size );
 }

 return p;
}
