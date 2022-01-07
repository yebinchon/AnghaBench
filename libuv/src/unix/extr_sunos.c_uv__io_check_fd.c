
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backend_fd; } ;
typedef TYPE_1__ uv_loop_t ;


 int POLLIN ;
 int PORT_SOURCE_FD ;
 int UV__ERR (int ) ;
 int abort () ;
 int errno ;
 int perror (char*) ;
 scalar_t__ port_associate (int ,int ,int,int ,int ) ;
 scalar_t__ port_dissociate (int ,int ,int) ;

int uv__io_check_fd(uv_loop_t* loop, int fd) {
  if (port_associate(loop->backend_fd, PORT_SOURCE_FD, fd, POLLIN, 0))
    return UV__ERR(errno);

  if (port_dissociate(loop->backend_fd, PORT_SOURCE_FD, fd)) {
    perror("(libuv) port_dissociate()");
    abort();
  }

  return 0;
}
