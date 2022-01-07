
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sys_Printf (char*,int) ;
 int numthreads ;

void ThreadSetDefault( void ){
 if ( numthreads == -1 ) {

  numthreads = 1;
 }
 if ( numthreads > 1 ) {
  Sys_Printf( "threads: %d\n", numthreads );
 }
}
