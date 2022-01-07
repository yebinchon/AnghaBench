
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_3__ {scalar_t__ lock; int cond; int a_mutex; int * owner; } ;
typedef TYPE_1__ pt_mutex_t ;


 int Error (char*) ;
 TYPE_1__ global_lock ;
 scalar_t__ pthread_cond_init (int *,int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;

void recursive_mutex_init( pthread_mutexattr_t attribs ){
 pt_mutex_t *pt_mutex = &global_lock;

 pt_mutex->owner = ((void*)0);
 if ( pthread_mutex_init( &pt_mutex->a_mutex, &attribs ) != 0 ) {
  Error( "pthread_mutex_init failed\n" );
 }
 if ( pthread_cond_init( &pt_mutex->cond, ((void*)0) ) != 0 ) {
  Error( "pthread_cond_init failed\n" );
 }

 pt_mutex->lock = 0;
}
