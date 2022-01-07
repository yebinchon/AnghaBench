
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * write; } ;
struct TYPE_6__ {TYPE_1__ _cb; } ;
struct TYPE_5__ {scalar_t__ cnt; } ;
struct st_h2o_evloop_socket_t {int _flags; TYPE_3__ super; int fd; TYPE_2__ _wreq; } ;
typedef int socklen_t ;
typedef int so_err ;


 int H2O_SOCKET_FLAG_IS_CONNECTING ;
 int H2O_SOCKET_FLAG_IS_DISPOSED ;
 int H2O_SOCKET_FLAG_IS_READ_READY ;
 int H2O_SOCKET_FLAG_IS_WRITE_NOTIFY ;
 int SOL_SOCKET ;
 int SO_ERROR ;
 int assert (int ) ;
 scalar_t__ getsockopt (int ,int ,int ,int*,int*) ;
 char* h2o_socket_error_conn_fail ;
 char* h2o_socket_error_io ;
 int on_write_complete (TYPE_3__*,char const*) ;
 int read_on_ready (struct st_h2o_evloop_socket_t*) ;

__attribute__((used)) static void run_socket(struct st_h2o_evloop_socket_t *sock)
{
    if ((sock->_flags & H2O_SOCKET_FLAG_IS_DISPOSED) != 0) {

        return;
    }

    if ((sock->_flags & H2O_SOCKET_FLAG_IS_READ_READY) != 0) {
        sock->_flags &= ~H2O_SOCKET_FLAG_IS_READ_READY;
        read_on_ready(sock);
    }

    if ((sock->_flags & H2O_SOCKET_FLAG_IS_WRITE_NOTIFY) != 0) {
        const char *err = ((void*)0);
        assert(sock->super._cb.write != ((void*)0));
        sock->_flags &= ~H2O_SOCKET_FLAG_IS_WRITE_NOTIFY;
        if (sock->_wreq.cnt != 0) {

            err = h2o_socket_error_io;
            sock->_wreq.cnt = 0;
        } else if ((sock->_flags & H2O_SOCKET_FLAG_IS_CONNECTING) != 0) {
            sock->_flags &= ~H2O_SOCKET_FLAG_IS_CONNECTING;
            int so_err = 0;
            socklen_t l = sizeof(so_err);
            so_err = 0;
            if (getsockopt(sock->fd, SOL_SOCKET, SO_ERROR, &so_err, &l) != 0 || so_err != 0) {

                err = h2o_socket_error_conn_fail;
            }
        }
        on_write_complete(&sock->super, err);
    }
}
