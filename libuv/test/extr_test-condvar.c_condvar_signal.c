
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem_signaled; int mutex; int cond; scalar_t__ use_broadcast; int sem_waiting; } ;
typedef TYPE_1__ worker_config ;


 int ASSERT (int) ;
 int uv_cond_broadcast (int *) ;
 int uv_cond_signal (int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_sem_post (int *) ;
 int uv_sem_wait (int *) ;

__attribute__((used)) static void condvar_signal(worker_config* c, int* flag) {

  uv_sem_wait(&c->sem_waiting);


  uv_mutex_lock(&c->mutex);


  ASSERT(*flag == 0);
  *flag = 1;

  if (c->use_broadcast)
    uv_cond_broadcast(&c->cond);
  else
    uv_cond_signal(&c->cond);

  uv_mutex_unlock(&c->mutex);


  uv_sem_post(&c->sem_signaled);
}
