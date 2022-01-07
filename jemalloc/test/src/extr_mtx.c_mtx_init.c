
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int pthread_mutexattr_t ;
struct TYPE_3__ {int lock; } ;
typedef TYPE_1__ mtx_t ;


 int InitializeCriticalSectionAndSpinCount (int *,int ) ;
 int OS_UNFAIR_LOCK_INIT ;
 int PTHREAD_MUTEX_DEFAULT ;
 int _CRT_SPINCOUNT ;
 scalar_t__ pthread_mutex_init (int *,int *) ;
 int pthread_mutexattr_destroy (int *) ;
 scalar_t__ pthread_mutexattr_init (int *) ;
 int pthread_mutexattr_settype (int *,int ) ;

bool
mtx_init(mtx_t *mtx) {
 pthread_mutexattr_t attr;

 if (pthread_mutexattr_init(&attr) != 0) {
  return 1;
 }
 pthread_mutexattr_settype(&attr, PTHREAD_MUTEX_DEFAULT);
 if (pthread_mutex_init(&mtx->lock, &attr) != 0) {
  pthread_mutexattr_destroy(&attr);
  return 1;
 }
 pthread_mutexattr_destroy(&attr);

 return 0;
}
