
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uv_cond_t ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
typedef int pthread_mutex_t ;


 int ETIMEDOUT ;
 int abort () ;
 scalar_t__ pthread_cond_destroy (int *) ;
 int pthread_cond_timedwait_relative_np (int *,int *,struct timespec*) ;
 scalar_t__ pthread_mutex_destroy (int *) ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 scalar_t__ pthread_mutex_lock (int *) ;
 scalar_t__ pthread_mutex_unlock (int *) ;

void uv_cond_destroy(uv_cond_t* cond) {
  if (pthread_cond_destroy(cond))
    abort();
}
