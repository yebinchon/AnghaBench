
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int fs_fd; int fs_event_watcher; } ;
typedef TYPE_1__ uv_loop_t ;


 int POLLIN ;
 int uv__io_stop (TYPE_1__*,int *,int ) ;
 int uv__platform_loop_delete (TYPE_1__*) ;
 int uv__platform_loop_init (TYPE_1__*) ;

int uv__io_fork(uv_loop_t* loop) {






  uv__platform_loop_delete(loop);
  return uv__platform_loop_init(loop);
}
