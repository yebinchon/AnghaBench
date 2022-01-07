
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_fd; int backend_fd; } ;
typedef TYPE_1__ uv_loop_t ;


 int pollset_destroy (int) ;
 int uv__close (int) ;

void uv__platform_loop_delete(uv_loop_t* loop) {
  if (loop->fs_fd != -1) {
    uv__close(loop->fs_fd);
    loop->fs_fd = -1;
  }

  if (loop->backend_fd != -1) {
    pollset_destroy(loop->backend_fd);
    loop->backend_fd = -1;
  }
}
