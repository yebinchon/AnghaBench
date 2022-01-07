
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* ptr; } ;
struct TYPE_4__ {TYPE_1__ data; } ;


 TYPE_2__* epoll_events ;

void *os_epoll_get_data_pointer(int index)
{
 return epoll_events[index].data.ptr;
}
