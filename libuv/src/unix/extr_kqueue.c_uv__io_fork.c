
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int backend_fd; int * cf_state; } ;
typedef TYPE_1__ uv_loop_t ;


 int uv__free (int *) ;
 int uv__has_forked_with_cfrunloop ;
 int uv__kqueue_init (TYPE_1__*) ;

int uv__io_fork(uv_loop_t* loop) {
  int err;
  loop->backend_fd = -1;
  err = uv__kqueue_init(loop);
  if (err)
    return err;
  return err;
}
