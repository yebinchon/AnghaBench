
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct st_h2o_tunnel_t {TYPE_2__** sock; } ;
struct TYPE_9__ {scalar_t__ bytes_read; TYPE_1__* input; struct st_h2o_tunnel_t* data; } ;
typedef TYPE_2__ h2o_socket_t ;
struct TYPE_10__ {int len; int base; } ;
typedef TYPE_3__ h2o_iovec_t ;
struct TYPE_8__ {int size; int bytes; } ;


 int assert (int) ;
 int close_connection (struct st_h2o_tunnel_t*) ;
 int h2o_socket_read_stop (TYPE_2__*) ;
 int h2o_socket_write (TYPE_2__*,TYPE_3__*,int,int ) ;
 int on_write_complete ;
 int reset_timeout (struct st_h2o_tunnel_t*) ;

__attribute__((used)) static void on_read(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_tunnel_t *tunnel = sock->data;
    h2o_socket_t *dst;
    assert(tunnel != ((void*)0));
    assert(tunnel->sock[0] == sock || tunnel->sock[1] == sock);

    if (err != ((void*)0)) {
        close_connection(tunnel);
        return;
    }

    if (sock->bytes_read == 0)
        return;

    h2o_socket_read_stop(sock);
    reset_timeout(tunnel);

    if (tunnel->sock[0] == sock)
        dst = tunnel->sock[1];
    else
        dst = tunnel->sock[0];

    h2o_iovec_t buf;
    buf.base = sock->input->bytes;
    buf.len = sock->input->size;
    h2o_socket_write(dst, &buf, 1, on_write_complete);
}
