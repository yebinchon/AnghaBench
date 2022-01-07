
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fd; } ;
struct TYPE_7__ {TYPE_1__ async_io_watcher; } ;
typedef TYPE_2__ uv_loop_t ;


 int uv__async_start (TYPE_2__*) ;
 int uv__async_stop (TYPE_2__*) ;

int uv__async_fork(uv_loop_t* loop) {
  if (loop->async_io_watcher.fd == -1)
    return 0;

  uv__async_stop(loop);

  return uv__async_start(loop);
}
