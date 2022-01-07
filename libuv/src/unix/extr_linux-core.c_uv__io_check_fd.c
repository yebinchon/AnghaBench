
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int backend_fd; } ;
typedef TYPE_2__ uv_loop_t ;
struct TYPE_4__ {int fd; } ;
struct epoll_event {TYPE_1__ data; int events; } ;
typedef int e ;


 scalar_t__ EEXIST ;
 int EPOLL_CTL_ADD ;
 int EPOLL_CTL_DEL ;
 int POLLIN ;
 int UV__ERR (scalar_t__) ;
 int abort () ;
 scalar_t__ epoll_ctl (int ,int ,int,struct epoll_event*) ;
 scalar_t__ errno ;
 int memset (struct epoll_event*,int ,int) ;

int uv__io_check_fd(uv_loop_t* loop, int fd) {
  struct epoll_event e;
  int rc;

  memset(&e, 0, sizeof(e));
  e.events = POLLIN;
  e.data.fd = -1;

  rc = 0;
  if (epoll_ctl(loop->backend_fd, EPOLL_CTL_ADD, fd, &e))
    if (errno != EEXIST)
      rc = UV__ERR(errno);

  if (rc == 0)
    if (epoll_ctl(loop->backend_fd, EPOLL_CTL_DEL, fd, &e))
      abort();

  return rc;
}
