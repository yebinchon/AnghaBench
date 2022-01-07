
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_mutex_t ;
typedef int uv_cond_t ;
typedef int uint64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_sec; int tv_nsec; } ;


 int ETIMEDOUT ;
 int NANOSEC ;
 int UV_CLOCK_PRECISE ;
 int UV_EINVAL ;
 int UV_ETIMEDOUT ;
 int abort () ;
 scalar_t__ gettimeofday (struct timeval*,int *) ;
 int pthread_cond_timedwait (int *,int *,struct timespec*) ;
 int pthread_cond_timedwait_monotonic_np (int *,int *,struct timespec*) ;
 int pthread_cond_timedwait_relative_np (int *,int *,struct timespec*) ;
 scalar_t__ uv__hrtime (int ) ;

int uv_cond_timedwait(uv_cond_t* cond, uv_mutex_t* mutex, uint64_t timeout) {
  int r;
  struct timespec ts;
  timeout += uv__hrtime(UV_CLOCK_PRECISE);

  ts.tv_sec = timeout / NANOSEC;
  ts.tv_nsec = timeout % NANOSEC;
  r = pthread_cond_timedwait(cond, mutex, &ts);




  if (r == 0)
    return 0;

  if (r == ETIMEDOUT)
    return UV_ETIMEDOUT;

  abort();

  return UV_EINVAL;

}
