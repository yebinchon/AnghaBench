
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int posted; int mutex; int sem; scalar_t__ delay; } ;
typedef TYPE_1__ worker_config ;


 int ASSERT (int) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_sem_post (int *) ;
 int uv_sleep (scalar_t__) ;

__attribute__((used)) static void worker(void* arg) {
  worker_config* c = arg;

  if (c->delay)
    uv_sleep(c->delay);

  uv_mutex_lock(&c->mutex);
  ASSERT(c->posted == 0);
  uv_sem_post(&c->sem);
  c->posted = 1;
  uv_mutex_unlock(&c->mutex);
}
