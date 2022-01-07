
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int size; TYPE_1__* items; } ;
typedef TYPE_2__ uv__os390_epoll ;
struct epoll_event {int events; } ;
struct TYPE_5__ {int fd; scalar_t__ revents; int events; } ;


 int EEXIST ;
 int ENOENT ;
 int EPOLL_CTL_ADD ;
 int EPOLL_CTL_DEL ;
 int EPOLL_CTL_MOD ;
 int abort () ;
 int errno ;
 int global_epoll_lock ;
 int maybe_resize (TYPE_2__*,int) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;

int epoll_ctl(uv__os390_epoll* lst,
              int op,
              int fd,
              struct epoll_event *event) {
  uv_mutex_lock(&global_epoll_lock);

  if (op == EPOLL_CTL_DEL) {
    if (fd >= lst->size || lst->items[fd].fd == -1) {
      uv_mutex_unlock(&global_epoll_lock);
      errno = ENOENT;
      return -1;
    }
    lst->items[fd].fd = -1;
  } else if (op == EPOLL_CTL_ADD) {





    maybe_resize(lst, fd + 2);
    if (lst->items[fd].fd != -1) {
      uv_mutex_unlock(&global_epoll_lock);
      errno = EEXIST;
      return -1;
    }
    lst->items[fd].fd = fd;
    lst->items[fd].events = event->events;
    lst->items[fd].revents = 0;
  } else if (op == EPOLL_CTL_MOD) {
    if (fd >= lst->size - 1 || lst->items[fd].fd == -1) {
      uv_mutex_unlock(&global_epoll_lock);
      errno = ENOENT;
      return -1;
    }
    lst->items[fd].events = event->events;
    lst->items[fd].revents = 0;
  } else
    abort();

  uv_mutex_unlock(&global_epoll_lock);
  return 0;
}
