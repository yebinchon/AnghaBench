
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ep; } ;
typedef TYPE_1__ uv_loop_t ;
typedef int uv__os390_epoll ;


 int UV__ERR (int ) ;
 int * epoll_create1 (int ) ;
 int errno ;

int uv__platform_loop_init(uv_loop_t* loop) {
  uv__os390_epoll* ep;

  ep = epoll_create1(0);
  loop->ep = ep;
  if (ep == ((void*)0))
    return UV__ERR(errno);

  return 0;
}
