
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_4__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_tunnel_t {TYPE_1__** sock; } ;
struct TYPE_5__ {TYPE_4__* input; struct st_h2o_tunnel_t* data; } ;
typedef TYPE_1__ h2o_socket_t ;
struct TYPE_6__ {int size; } ;


 int assert (int) ;
 int close_connection (struct st_h2o_tunnel_t*) ;
 int h2o_buffer_consume (TYPE_4__**,int ) ;
 int h2o_socket_read_start (TYPE_1__*,int ) ;
 int on_read ;
 int reset_timeout (struct st_h2o_tunnel_t*) ;

__attribute__((used)) static void on_write_complete(h2o_socket_t *sock, const char *err)
{
    struct st_h2o_tunnel_t *tunnel = sock->data;
    h2o_socket_t *peer;
    assert(tunnel != ((void*)0));
    assert(tunnel->sock[0] == sock || tunnel->sock[1] == sock);

    if (err != ((void*)0)) {
        close_connection(tunnel);
        return;
    }

    reset_timeout(tunnel);

    if (tunnel->sock[0] == sock)
        peer = tunnel->sock[1];
    else
        peer = tunnel->sock[0];

    h2o_buffer_consume(&peer->input, peer->input->size);
    h2o_socket_read_start(peer, on_read);
}
