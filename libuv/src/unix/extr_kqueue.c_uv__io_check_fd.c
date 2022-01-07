
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int backend_fd; } ;
typedef TYPE_1__ uv_loop_t ;
struct kevent {int dummy; } ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int ) ;
 int UV__ERR (int ) ;
 int abort () ;
 int errno ;
 scalar_t__ kevent (int ,struct kevent*,int,int *,int ,int *) ;

int uv__io_check_fd(uv_loop_t* loop, int fd) {
  struct kevent ev;
  int rc;

  rc = 0;
  EV_SET(&ev, fd, EVFILT_READ, EV_ADD, 0, 0, 0);
  if (kevent(loop->backend_fd, &ev, 1, ((void*)0), 0, ((void*)0)))
    rc = UV__ERR(errno);

  EV_SET(&ev, fd, EVFILT_READ, EV_DELETE, 0, 0, 0);
  if (rc == 0)
    if (kevent(loop->backend_fd, &ev, 1, ((void*)0), 0, ((void*)0)))
      abort();

  return rc;
}
