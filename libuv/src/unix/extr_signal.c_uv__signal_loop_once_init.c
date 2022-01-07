
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int* signal_pipefd; int signal_io_watcher; } ;
typedef TYPE_1__ uv_loop_t ;


 int POLLIN ;
 int UV__F_NONBLOCK ;
 int uv__io_init (int *,int ,int) ;
 int uv__io_start (TYPE_1__*,int *,int ) ;
 int uv__make_pipe (int*,int ) ;
 int uv__signal_event ;

__attribute__((used)) static int uv__signal_loop_once_init(uv_loop_t* loop) {
  int err;


  if (loop->signal_pipefd[0] != -1)
    return 0;

  err = uv__make_pipe(loop->signal_pipefd, UV__F_NONBLOCK);
  if (err)
    return err;

  uv__io_init(&loop->signal_io_watcher,
              uv__signal_event,
              loop->signal_pipefd[0]);
  uv__io_start(loop, &loop->signal_io_watcher, POLLIN);

  return 0;
}
