
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_mutex_t ;
typedef int pthread_mutexattr_t ;


 int PTHREAD_MUTEX_RECURSIVE ;
 int UV__ERR (int) ;
 int abort () ;
 int pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 scalar_t__ pthread_mutexattr_settype (int *,int ) ;

int uv_mutex_init_recursive(uv_mutex_t* mutex) {
  pthread_mutexattr_t attr;
  int err;

  if (pthread_mutexattr_init(&attr))
    abort();

  if (pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_RECURSIVE))
    abort();

  err = pthread_mutex_init(mutex, &attr);

  if (pthread_mutexattr_destroy(&attr))
    abort();

  return UV__ERR(err);
}
