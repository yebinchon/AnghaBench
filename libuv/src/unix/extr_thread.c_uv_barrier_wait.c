
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_barrier_t ;


 int PTHREAD_BARRIER_SERIAL_THREAD ;
 int abort () ;
 int pthread_barrier_wait (int *) ;

int uv_barrier_wait(uv_barrier_t* barrier) {
  int rc;

  rc = pthread_barrier_wait(barrier);
  if (rc != 0)
    if (rc != PTHREAD_BARRIER_SERIAL_THREAD)
      abort();

  return rc == PTHREAD_BARRIER_SERIAL_THREAD;
}
