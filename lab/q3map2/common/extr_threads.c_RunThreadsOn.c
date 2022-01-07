
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ qboolean ;
typedef int pthread_t ;
typedef int pthread_mutexattr_t ;


 int Error (char*) ;
 int I_FloatTime () ;
 int MAX_THREADS ;
 int PTHREAD_MUTEX_ADAPTIVE_NP ;
 int PTHREAD_MUTEX_FAST_NP ;
 int Sys_Printf (char*,int) ;
 scalar_t__ dispatch ;
 int numthreads ;
 int oldf ;
 scalar_t__ pacifier ;
 scalar_t__ pthread_create (int *,int *,void*,void*) ;
 scalar_t__ pthread_join (int ,void**) ;
 int pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;
 int qfalse ;
 int qtrue ;
 int recursive_mutex_init (int ) ;
 int setbuf (int ,int *) ;
 int stdout ;
 int threaded ;
 int workcount ;

void RunThreadsOn( int workcnt, qboolean showpacifier, void ( *func )( int ) ){
 pthread_mutexattr_t mattrib;
 pthread_t work_threads[MAX_THREADS];

 int start, end;
 int i = 0;
 void *exit_value;

 start = I_FloatTime();
 pacifier = showpacifier;

 dispatch = 0;
 oldf = -1;
 workcount = workcnt;

 if ( numthreads == 1 ) {
  func( 0 );
 }
 else
 {
  threaded = qtrue;

  if ( pacifier ) {
   setbuf( stdout, ((void*)0) );
  }

  if ( pthread_mutexattr_init( &mattrib ) != 0 ) {
   Error( "pthread_mutexattr_init failed" );
  }



  if ( pthread_mutexattr_settype( &mattrib, PTHREAD_MUTEX_ADAPTIVE_NP ) != 0 )

  { Error( "pthread_mutexattr_settype failed" ); }
  recursive_mutex_init( mattrib );

  for ( i = 0 ; i < numthreads ; i++ )
  {

   if ( pthread_create( &work_threads[i], ((void*)0), (void*)func, (void*)(uintptr_t)i ) != 0 ) {
    Error( "pthread_create failed" );
   }
  }
  for ( i = 0 ; i < numthreads ; i++ )
  {
   if ( pthread_join( work_threads[i], &exit_value ) != 0 ) {
    Error( "pthread_join failed" );
   }
  }
  pthread_mutexattr_destroy( &mattrib );
  threaded = qfalse;
 }

 end = I_FloatTime();
 if ( pacifier ) {
  Sys_Printf( " (%i)\n", end - start );
 }
}
