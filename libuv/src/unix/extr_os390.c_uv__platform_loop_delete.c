
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ep; } ;
typedef TYPE_1__ uv_loop_t ;


 int epoll_queue_close (int *) ;

void uv__platform_loop_delete(uv_loop_t* loop) {
  if (loop->ep != ((void*)0)) {
    epoll_queue_close(loop->ep);
    loop->ep = ((void*)0);
  }
}
