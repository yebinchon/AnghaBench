
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int barrier; int worker_barrier_wait_rval; scalar_t__ delay; } ;
typedef TYPE_1__ worker_config ;


 int uv_barrier_wait (int *) ;
 int uv_sleep (scalar_t__) ;

__attribute__((used)) static void worker(void* arg) {
  worker_config* c = arg;

  if (c->delay)
    uv_sleep(c->delay);

  c->worker_barrier_wait_rval = uv_barrier_wait(&c->barrier);
}
