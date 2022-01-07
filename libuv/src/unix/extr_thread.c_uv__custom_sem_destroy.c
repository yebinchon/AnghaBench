
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int mutex; int cond; } ;
typedef TYPE_1__ uv_semaphore_t ;
typedef int uv_sem_t ;


 int uv__free (TYPE_1__*) ;
 int uv_cond_destroy (int *) ;
 int uv_mutex_destroy (int *) ;

__attribute__((used)) static void uv__custom_sem_destroy(uv_sem_t* sem_) {
  uv_semaphore_t* sem;

  sem = *(uv_semaphore_t**)sem_;
  uv_cond_destroy(&sem->cond);
  uv_mutex_destroy(&sem->mutex);
  uv__free(sem);
}
