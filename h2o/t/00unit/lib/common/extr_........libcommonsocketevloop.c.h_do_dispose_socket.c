
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct st_h2o_evloop_socket_t {int fd; int _flags; } ;
typedef int h2o_socket_t ;


 int H2O_SOCKET_FLAG_IS_DISPOSED ;
 int close (int) ;
 int evloop_do_on_socket_close (struct st_h2o_evloop_socket_t*) ;
 int link_to_statechanged (struct st_h2o_evloop_socket_t*) ;
 int wreq_free_buffer_if_allocated (struct st_h2o_evloop_socket_t*) ;

void do_dispose_socket(h2o_socket_t *_sock)
{
    struct st_h2o_evloop_socket_t *sock = (struct st_h2o_evloop_socket_t *)_sock;

    evloop_do_on_socket_close(sock);
    wreq_free_buffer_if_allocated(sock);
    if (sock->fd != -1) {
        close(sock->fd);
        sock->fd = -1;
    }
    sock->_flags = H2O_SOCKET_FLAG_IS_DISPOSED;
    link_to_statechanged(sock);
}
