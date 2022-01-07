
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_fd; int backend_fd; } ;
typedef TYPE_1__ uv_loop_t ;


 int pollset_create (int) ;

int uv__platform_loop_init(uv_loop_t* loop) {
  loop->fs_fd = -1;



  loop->backend_fd = pollset_create(-1);

  if (loop->backend_fd == -1)
    return -1;

  return 0;
}
