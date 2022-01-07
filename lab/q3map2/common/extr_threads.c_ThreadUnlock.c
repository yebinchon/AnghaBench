
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ lock; int a_mutex; int cond; int * owner; } ;
typedef TYPE_1__ pt_mutex_t ;


 TYPE_1__ global_lock ;
 int pthread_cond_signal (int *) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int threaded ;

void ThreadUnlock( void ){
 pt_mutex_t *pt_mutex = &global_lock;

 if ( !threaded ) {
  return;
 }

 pthread_mutex_lock( &pt_mutex->a_mutex );
 pt_mutex->lock--;

 if ( pt_mutex->lock == 0 ) {
  pt_mutex->owner = ((void*)0);
  pthread_cond_signal( &pt_mutex->cond );
 }

 pthread_mutex_unlock( &pt_mutex->a_mutex );
}
