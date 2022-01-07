
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sem_signaled; int mutex; int cond; int sem_waiting; } ;
typedef TYPE_1__ worker_config ;


 int ASSERT (int) ;
 int uv_cond_wait (int *,int *) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_sem_post (int *) ;
 int uv_sem_wait (int *) ;

__attribute__((used)) static int condvar_wait(worker_config* c, const int* flag) {
  uv_mutex_lock(&c->mutex);


  uv_sem_post(&c->sem_waiting);


  do {
    uv_cond_wait(&c->cond, &c->mutex);
  } while (*flag == 0);
  ASSERT(*flag == 1);

  uv_mutex_unlock(&c->mutex);


  uv_sem_wait(&c->sem_signaled);

  return 0;
}
