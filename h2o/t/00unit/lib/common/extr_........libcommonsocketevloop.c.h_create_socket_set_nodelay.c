
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_evloop_socket_t {int dummy; } ;
typedef int on ;
typedef int h2o_evloop_t ;


 int IPPROTO_TCP ;
 int TCP_NODELAY ;
 struct st_h2o_evloop_socket_t* create_socket (int *,int,int) ;
 int setsockopt (int,int ,int ,int*,int) ;

__attribute__((used)) static struct st_h2o_evloop_socket_t *create_socket_set_nodelay(h2o_evloop_t *loop, int fd, int flags)
{

    int on = 1;
    setsockopt(fd, IPPROTO_TCP, TCP_NODELAY, &on, sizeof(on));
    return create_socket(loop, fd, flags);
}
