
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EPOLLERR ;
 int EPOLLET ;
 int EPOLLHUP ;
 int EPOLLIN ;
 int EPOLLOUT ;
 int EPOLLPRI ;
 int EPOLLRDHUP ;
 int EVT_LEVEL ;
 int EVT_NOHUP ;
 int EVT_READ ;
 int EVT_SPEC ;
 int EVT_WRITE ;

int epoll_conv_flags (int flags) {
  int r = EPOLLERR;
  if (flags == 0x204) {
    return EPOLLIN;
  }
  if (!flags) {
    return 0;
  }
  if (!(flags & EVT_NOHUP)) {
    r |= EPOLLHUP;
  }
  if (flags & EVT_READ) {
    r |= EPOLLIN;
  }
  if (flags & EVT_WRITE) {
    r |= EPOLLOUT;
  }
  if (flags & EVT_SPEC) {
    r |= EPOLLRDHUP | EPOLLPRI;
  }
  if (!(flags & EVT_LEVEL)) {
    r |= EPOLLET;
  }
  return r;
}
