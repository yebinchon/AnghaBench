
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct epoll_event {int dummy; } ;


 int __NR_epoll_pwait ;
 int __NR_epoll_wait ;
 int syscall (int ,int,struct epoll_event*,int,int,...) ;

int
epoll_wait(int epfd, struct epoll_event *events, int maxevents, int timeout)
{



 return (syscall(__NR_epoll_wait, epfd, events, maxevents, timeout));

}
