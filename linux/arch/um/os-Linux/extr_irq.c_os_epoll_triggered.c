
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int events; } ;


 TYPE_1__* epoll_events ;

int os_epoll_triggered(int index, int events)
{
 return epoll_events[index].events & events;
}
