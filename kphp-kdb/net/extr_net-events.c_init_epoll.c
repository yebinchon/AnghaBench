
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int fd; } ;


 TYPE_1__* Events ;
 int MAX_EVENTS ;
 int epoll_create (int ) ;
 int epoll_fd ;
 int perror (char*) ;

int init_epoll (void) {
  int fd;
  if (epoll_fd) return 0;
  Events[0].fd = -1;
  fd = epoll_create (MAX_EVENTS);
  if (fd < 0) {
    perror ("epoll_create()");
    return -1;
  }
  epoll_fd = fd;
  return fd;
}
