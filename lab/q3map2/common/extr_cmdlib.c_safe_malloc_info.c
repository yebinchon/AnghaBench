
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Error (char*,char*,size_t) ;
 void* calloc (size_t,int) ;

void *safe_malloc_info( size_t size, char* info ){
 void *p;

 p = calloc( size, 1 );
 if ( !p ) {
  Error( "%s: safe_malloc failed on allocation of %i bytes", info, size );
 }

 return p;
}
