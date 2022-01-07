
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int fd_t ;


 int sys_epoll_create (int ) ;

fd_t sys_epoll_create0() {
    return sys_epoll_create(0);
}
