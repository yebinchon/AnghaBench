
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int h2o_socket_t ;
typedef int h2o_evloop_t ;
struct TYPE_2__ {int super; } ;


 int F_SETFL ;
 int O_NONBLOCK ;
 TYPE_1__* create_socket_set_nodelay (int *,int,int) ;
 int fcntl (int,int ,int ) ;

h2o_socket_t *h2o_evloop_socket_create(h2o_evloop_t *loop, int fd, int flags)
{

    fcntl(fd, F_SETFL, O_NONBLOCK);
    return &create_socket_set_nodelay(loop, fd, flags)->super;
}
