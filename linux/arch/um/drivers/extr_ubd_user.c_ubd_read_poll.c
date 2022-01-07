
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int events; } ;


 int POLLIN ;
 TYPE_1__ kernel_pollfd ;
 int poll (TYPE_1__*,int,int) ;

int ubd_read_poll(int timeout)
{
 kernel_pollfd.events = POLLIN;
 return poll(&kernel_pollfd, 1, timeout);
}
