
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_mutex_t ;


 int EAGAIN ;
 int EBUSY ;
 int UV_EBUSY ;
 int abort () ;
 int pthread_mutex_trylock (int *) ;

int uv_mutex_trylock(uv_mutex_t* mutex) {
  int err;

  err = pthread_mutex_trylock(mutex);
  if (err) {
    if (err != EBUSY && err != EAGAIN)
      abort();
    return UV_EBUSY;
  }

  return 0;
}
