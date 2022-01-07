
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem_waiting; int sem_signaled; int cond; int mutex; } ;
typedef TYPE_1__ worker_config ;


 int uv_cond_destroy (int *) ;
 int uv_mutex_destroy (int *) ;
 int uv_sem_destroy (int *) ;

void worker_config_destroy(worker_config* wc) {
  uv_mutex_destroy(&wc->mutex);
  uv_cond_destroy(&wc->cond);
  uv_sem_destroy(&wc->sem_signaled);
  uv_sem_destroy(&wc->sem_waiting);
}
