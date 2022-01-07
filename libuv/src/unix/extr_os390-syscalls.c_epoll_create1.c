
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int size; int member; TYPE_1__* items; int msg_queue; } ;
typedef TYPE_2__ uv__os390_epoll ;
struct TYPE_7__ {scalar_t__ revents; int events; int fd; } ;


 int POLLIN ;
 int QUEUE_INSERT_TAIL (int *,int *) ;
 int epoll_init ;
 int global_epoll_lock ;
 int global_epoll_queue ;
 int init_message_queue (TYPE_2__*) ;
 int maybe_resize (TYPE_2__*,int) ;
 int once ;
 TYPE_2__* uv__malloc (int) ;
 int uv_mutex_lock (int *) ;
 int uv_mutex_unlock (int *) ;
 int uv_once (int *,int ) ;

uv__os390_epoll* epoll_create1(int flags) {
  uv__os390_epoll* lst;

  lst = uv__malloc(sizeof(*lst));
  if (lst != ((void*)0)) {

    lst->size = 0;
    lst->items = ((void*)0);
    init_message_queue(lst);
    maybe_resize(lst, 1);
    lst->items[lst->size - 1].fd = lst->msg_queue;
    lst->items[lst->size - 1].events = POLLIN;
    lst->items[lst->size - 1].revents = 0;
    uv_once(&once, epoll_init);
    uv_mutex_lock(&global_epoll_lock);
    QUEUE_INSERT_TAIL(&global_epoll_queue, &lst->member);
    uv_mutex_unlock(&global_epoll_lock);
  }

  return lst;
}
