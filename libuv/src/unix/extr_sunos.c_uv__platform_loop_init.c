
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int fs_fd; int backend_fd; } ;
typedef TYPE_1__ uv_loop_t ;


 int UV__ERR (int ) ;
 int errno ;
 int port_create () ;
 int uv__cloexec (int,int) ;
 int uv__close (int) ;

int uv__platform_loop_init(uv_loop_t* loop) {
  int err;
  int fd;

  loop->fs_fd = -1;
  loop->backend_fd = -1;

  fd = port_create();
  if (fd == -1)
    return UV__ERR(errno);

  err = uv__cloexec(fd, 1);
  if (err) {
    uv__close(fd);
    return err;
  }
  loop->backend_fd = fd;

  return 0;
}
