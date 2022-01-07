
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* ptr; } ;
struct epoll_event {int events; TYPE_1__ data; } ;


 scalar_t__ EEXIST ;
 int EPOLLET ;
 int EPOLL_CTL_ADD ;
 int epoll_ctl (int ,int ,int,struct epoll_event*) ;
 int epollfd ;
 scalar_t__ errno ;
 int os_mod_epoll_fd (int,int,void*) ;
 int printk (char*,int,int ) ;
 int strerror (scalar_t__) ;

int os_add_epoll_fd(int events, int fd, void *data)
{
 struct epoll_event event;
 int result;

 event.data.ptr = data;
 event.events = events | EPOLLET;
 result = epoll_ctl(epollfd, EPOLL_CTL_ADD, fd, &event);
 if ((result) && (errno == EEXIST))
  result = os_mod_epoll_fd(events, fd, data);
 if (result)
  printk("epollctl add err fd %d, %s\n", fd, strerror(errno));
 return result;
}
