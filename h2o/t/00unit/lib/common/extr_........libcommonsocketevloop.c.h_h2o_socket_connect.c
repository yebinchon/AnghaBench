
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_evloop_socket_t {int super; } ;
struct sockaddr {int sa_family; } ;
typedef int socklen_t ;
typedef int h2o_socket_t ;
typedef int h2o_socket_cb ;
typedef int h2o_loop_t ;


 scalar_t__ EINPROGRESS ;
 int F_SETFL ;
 int H2O_SOCKET_FLAG_IS_CONNECTING ;
 int O_NONBLOCK ;
 int SOCK_STREAM ;
 int cloexec_socket (int ,int ,int ) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int ) ;
 struct st_h2o_evloop_socket_t* create_socket_set_nodelay (int *,int,int ) ;
 scalar_t__ errno ;
 int fcntl (int,int ,int ) ;
 int h2o_socket_notify_write (int *,int ) ;

h2o_socket_t *h2o_socket_connect(h2o_loop_t *loop, struct sockaddr *addr, socklen_t addrlen, h2o_socket_cb cb)
{
    int fd;
    struct st_h2o_evloop_socket_t *sock;

    if ((fd = cloexec_socket(addr->sa_family, SOCK_STREAM, 0)) == -1)
        return ((void*)0);
    fcntl(fd, F_SETFL, O_NONBLOCK);
    if (!(connect(fd, addr, addrlen) == 0 || errno == EINPROGRESS)) {
        close(fd);
        return ((void*)0);
    }

    sock = create_socket_set_nodelay(loop, fd, H2O_SOCKET_FLAG_IS_CONNECTING);
    h2o_socket_notify_write(&sock->super, cb);
    return &sock->super;
}
