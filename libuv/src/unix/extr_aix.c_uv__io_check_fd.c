
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backend_fd; } ;
typedef TYPE_1__ uv_loop_t ;
struct poll_ctl {int fd; int cmd; int events; } ;


 int POLLIN ;
 int PS_DELETE ;
 int PS_MOD ;
 int UV__ERR (int ) ;
 int abort () ;
 int errno ;
 scalar_t__ pollset_ctl (int ,struct poll_ctl*,int) ;

int uv__io_check_fd(uv_loop_t* loop, int fd) {
  struct poll_ctl pc;

  pc.events = POLLIN;
  pc.cmd = PS_MOD;
  pc.fd = fd;

  if (pollset_ctl(loop->backend_fd, &pc, 1))
    return UV__ERR(errno);

  pc.cmd = PS_DELETE;
  if (pollset_ctl(loop->backend_fd, &pc, 1))
    abort();

  return 0;
}
