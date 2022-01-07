
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_rwlock_t ;


 int EAGAIN ;
 int EBUSY ;
 int UV_EBUSY ;
 int abort () ;
 int pthread_rwlock_tryrdlock (int *) ;

int uv_rwlock_tryrdlock(uv_rwlock_t* rwlock) {
  int err;

  err = pthread_rwlock_tryrdlock(rwlock);
  if (err) {
    if (err != EBUSY && err != EAGAIN)
      abort();
    return UV_EBUSY;
  }

  return 0;
}
