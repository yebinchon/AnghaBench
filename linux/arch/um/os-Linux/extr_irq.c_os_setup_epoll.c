
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MAX_EPOLL_EVENTS ;
 int epoll_create (int ) ;
 int epollfd ;

int os_setup_epoll(void)
{
 epollfd = epoll_create(MAX_EPOLL_EVENTS);
 return epollfd;
}
