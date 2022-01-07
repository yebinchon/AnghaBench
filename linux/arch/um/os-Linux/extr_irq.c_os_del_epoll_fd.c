
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epoll_event {int dummy; } ;


 int EPOLL_CTL_DEL ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int epollfd ;

int os_del_epoll_fd(int fd)
{
 struct epoll_event event;
 int result;



 result = epoll_ctl(epollfd, EPOLL_CTL_DEL, fd, &event);
 return result;
}
