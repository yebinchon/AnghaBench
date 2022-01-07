
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_evloop_socket_t {int fd; int _flags; scalar_t__ loop; } ;
struct st_h2o_evloop_epoll_t {int ep; } ;


 scalar_t__ EINTR ;
 int EPOLL_CTL_DEL ;
 int H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED ;
 int epoll_ctl (int ,int ,int,int *) ;
 scalar_t__ errno ;
 int h2o_error_printf (char*,scalar_t__,int) ;

__attribute__((used)) static void evloop_do_on_socket_close(struct st_h2o_evloop_socket_t *sock)
{
    struct st_h2o_evloop_epoll_t *loop = (void *)sock->loop;
    int ret;

    if (sock->fd == -1)
        return;
    if ((sock->_flags & H2O_SOCKET_FLAG__EPOLL_IS_REGISTERED) == 0)
        return;
    while ((ret = epoll_ctl(loop->ep, EPOLL_CTL_DEL, sock->fd, ((void*)0))) != 0 && errno == EINTR)
        ;
    if (ret != 0)
        h2o_error_printf("socket_close: epoll(DEL) returned error %d (fd=%d)\n", errno, sock->fd);
}
