
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct st_h2o_evloop_socket_t {int _flags; int fd; } ;
typedef int h2o_socket_t ;
struct TYPE_3__ {int fd; } ;
typedef TYPE_1__ h2o_socket_export_t ;


 int H2O_SOCKET_FLAG_IS_DISPOSED ;
 int assert (int) ;
 int evloop_do_on_socket_export (struct st_h2o_evloop_socket_t*) ;

int do_export(h2o_socket_t *_sock, h2o_socket_export_t *info)
{
    struct st_h2o_evloop_socket_t *sock = (void *)_sock;

    assert((sock->_flags & H2O_SOCKET_FLAG_IS_DISPOSED) == 0);
    evloop_do_on_socket_export(sock);
    sock->_flags = H2O_SOCKET_FLAG_IS_DISPOSED;

    info->fd = sock->fd;
    sock->fd = -1;

    return 0;
}
