
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int epollfd ;
 int os_close_file (int ) ;

void os_close_epoll_fd(void)
{

 os_close_file(epollfd);
}
