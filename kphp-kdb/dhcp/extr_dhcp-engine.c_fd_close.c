
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 int close (int) ;
 int epoll_close (int) ;

__attribute__((used)) static void fd_close (int *fd) {
  if (*fd >= 0) {
    epoll_close (*fd);
    assert (!close (*fd));
    *fd = -1;
  }
}
