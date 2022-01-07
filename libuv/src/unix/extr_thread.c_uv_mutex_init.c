
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_mutex_t ;
typedef int pthread_mutexattr_t ;


 int PTHREAD_MUTEX_ERRORCHECK ;
 int UV__ERR (int) ;
 int abort () ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

int uv_mutex_init(uv_mutex_t* mutex) {

  return UV__ERR(pthread_mutex_init(mutex, ((void*)0)));
}
