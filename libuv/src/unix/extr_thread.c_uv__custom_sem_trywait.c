
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ value; int mutex; } ;
typedef TYPE_1__ uv_semaphore_t ;
typedef int uv_sem_t ;


 int UV_EAGAIN ;
 scalar_t__ uv_mutex_trylock (int *) ;
 int uv_mutex_unlock (int *) ;

__attribute__((used)) static int uv__custom_sem_trywait(uv_sem_t* sem_) {
  uv_semaphore_t* sem;

  sem = *(uv_semaphore_t**)sem_;
  if (uv_mutex_trylock(&sem->mutex) != 0)
    return UV_EAGAIN;

  if (sem->value == 0) {
    uv_mutex_unlock(&sem->mutex);
    return UV_EAGAIN;
  }

  sem->value--;
  uv_mutex_unlock(&sem->mutex);

  return 0;
}
