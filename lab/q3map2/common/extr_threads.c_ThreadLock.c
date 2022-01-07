
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_t ;
struct TYPE_3__ {int lock; int a_mutex; int * owner; int cond; } ;
typedef TYPE_1__ pt_mutex_t ;


 TYPE_1__ global_lock ;
 int pthread_cond_wait (int *,int *) ;
 scalar_t__ pthread_equal (scalar_t__,int ) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ pthread_self () ;
 int threaded ;

void ThreadLock( void ){
 pt_mutex_t *pt_mutex = &global_lock;

 if ( !threaded ) {
  return;
 }

 pthread_mutex_lock( &pt_mutex->a_mutex );
 if ( pthread_equal( pthread_self(), (pthread_t)&pt_mutex->owner ) ) {
  pt_mutex->lock++;
 }
 else
 {
  if ( ( !pt_mutex->owner ) && ( pt_mutex->lock == 0 ) ) {
   pt_mutex->owner = (pthread_t *)pthread_self();
   pt_mutex->lock = 1;
  }
  else
  {
   while ( 1 )
   {
    pthread_cond_wait( &pt_mutex->cond, &pt_mutex->a_mutex );
    if ( ( !pt_mutex->owner ) && ( pt_mutex->lock == 0 ) ) {
     pt_mutex->owner = (pthread_t *)pthread_self();
     pt_mutex->lock = 1;
     break;
    }
   }
  }
 }
 pthread_mutex_unlock( &pt_mutex->a_mutex );
}
