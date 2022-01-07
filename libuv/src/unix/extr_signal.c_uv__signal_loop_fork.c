
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int* signal_pipefd; int signal_io_watcher; } ;
typedef TYPE_1__ uv_loop_t ;


 int POLLIN ;
 int uv__close (int) ;
 int uv__io_stop (TYPE_1__*,int *,int ) ;
 int uv__signal_loop_once_init (TYPE_1__*) ;

int uv__signal_loop_fork(uv_loop_t* loop) {
  uv__io_stop(loop, &loop->signal_io_watcher, POLLIN);
  uv__close(loop->signal_pipefd[0]);
  uv__close(loop->signal_pipefd[1]);
  loop->signal_pipefd[0] = -1;
  loop->signal_pipefd[1] = -1;
  return uv__signal_loop_once_init(loop);
}
