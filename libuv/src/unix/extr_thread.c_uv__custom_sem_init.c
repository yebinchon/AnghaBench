
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {unsigned int value; int mutex; int cond; } ;
typedef TYPE_1__ uv_semaphore_t ;
typedef int uv_sem_t ;


 int UV_ENOMEM ;
 int uv__free (TYPE_1__*) ;
 TYPE_1__* uv__malloc (int) ;
 int uv_cond_init (int *) ;
 int uv_mutex_destroy (int *) ;
 int uv_mutex_init (int *) ;

__attribute__((used)) static int uv__custom_sem_init(uv_sem_t* sem_, unsigned int value) {
  int err;
  uv_semaphore_t* sem;

  sem = uv__malloc(sizeof(*sem));
  if (sem == ((void*)0))
    return UV_ENOMEM;

  if ((err = uv_mutex_init(&sem->mutex)) != 0) {
    uv__free(sem);
    return err;
  }

  if ((err = uv_cond_init(&sem->cond)) != 0) {
    uv_mutex_destroy(&sem->mutex);
    uv__free(sem);
    return err;
  }

  sem->value = value;
  *(uv_semaphore_t**)sem_ = sem;
  return 0;
}
