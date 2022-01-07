
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; int mutex; int cond; } ;
typedef TYPE_1__ uv_semaphore_t ;
typedef int uv_sem_t ;


 int uv_cond_wait (int *,int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static void uv__custom_sem_wait(uv_sem_t* sem_) {
  uv_semaphore_t* sem;

  sem = *(uv_semaphore_t**)sem_;
  uv_mutex_lock(&sem->mutex);
  while (sem->value == 0)
    uv_cond_wait(&sem->cond, &sem->mutex);
  sem->value--;
  uv_mutex_unlock(&sem->mutex);
}
