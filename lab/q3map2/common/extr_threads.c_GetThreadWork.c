
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Sys_Printf (char*,int) ;
 int ThreadLock () ;
 int ThreadUnlock () ;
 int dispatch ;
 int fflush (int ) ;
 int oldf ;
 scalar_t__ pacifier ;
 int stdout ;
 int workcount ;

int GetThreadWork( void ){
 int r;
 int f;

 ThreadLock();

 if ( dispatch == workcount ) {
  ThreadUnlock();
  return -1;
 }

 f = 10 * dispatch / workcount;
 if ( f != oldf ) {
  oldf = f;
  if ( pacifier ) {
   Sys_Printf( "%i...", f );
   fflush( stdout );
  }
 }

 r = dispatch;
 dispatch++;
 ThreadUnlock();

 return r;
}
