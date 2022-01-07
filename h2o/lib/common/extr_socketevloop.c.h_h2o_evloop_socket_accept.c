
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_8__ ;
typedef struct TYPE_11__ TYPE_7__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct st_h2o_evloop_socket_t {int loop; int fd; } ;
struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int peeraddr ;
struct TYPE_9__ {int _skip_tracing; } ;
typedef TYPE_1__ h2o_socket_t ;
typedef int flag ;
struct TYPE_12__ {TYPE_1__ super; } ;
struct TYPE_11__ {TYPE_1__ super; } ;
struct TYPE_10__ {scalar_t__ skip_tracing; } ;


 int F_SETFL ;
 int H2O_SOCKET_FLAG_IS_ACCEPTED_CONNECTION ;
 int IPPROTO_TCP ;
 int O_NONBLOCK ;
 int SOCK_CLOEXEC ;
 int SOCK_NONBLOCK ;
 int TCP_NODELAY ;
 int accept4 (int ,struct sockaddr*,int*,int) ;
 int assert (int) ;
 int cloexec_accept (int ,struct sockaddr*,int*) ;
 TYPE_8__* create_socket (int ,int,int ) ;
 TYPE_7__* create_socket_set_nodelay (int ,int,int ) ;
 int fcntl (int,int ,int ) ;
 scalar_t__ getsockopt (int,int ,int ,int*,int*) ;
 int h2o_socket_ebpf_init_key ;
 TYPE_3__ h2o_socket_ebpf_lookup (int ,int ,TYPE_1__*) ;
 int h2o_socket_setpeername (TYPE_1__*,struct sockaddr*,int) ;

h2o_socket_t *h2o_evloop_socket_accept(h2o_socket_t *_listener)
{
    struct st_h2o_evloop_socket_t *listener = (struct st_h2o_evloop_socket_t *)_listener;
    int fd;
    h2o_socket_t *sock;






    struct sockaddr_storage *peeraddr = ((void*)0);
    socklen_t *peeraddrlen = ((void*)0);
    if ((fd = cloexec_accept(listener->fd, (struct sockaddr *)peeraddr, peeraddrlen)) == -1)
        return ((void*)0);
    fcntl(fd, F_SETFL, O_NONBLOCK);
    sock = &create_socket_set_nodelay(listener->loop, fd, H2O_SOCKET_FLAG_IS_ACCEPTED_CONNECTION)->super;


    if (peeraddr != ((void*)0) && *peeraddrlen <= sizeof(*peeraddr))
        h2o_socket_setpeername(sock, (struct sockaddr *)peeraddr, *peeraddrlen);
    if (h2o_socket_ebpf_lookup(listener->loop, h2o_socket_ebpf_init_key, sock).skip_tracing)
        sock->_skip_tracing = 1;
    return sock;
}
