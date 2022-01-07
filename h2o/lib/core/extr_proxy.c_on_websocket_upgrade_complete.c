
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct rp_ws_upgrade_info_t {int upstream_sock; int timeout; int ctx; } ;
struct TYPE_4__ {int input; } ;
typedef TYPE_1__ h2o_socket_t ;


 int free (struct rp_ws_upgrade_info_t*) ;
 int h2o_buffer_consume (int *,size_t) ;
 int h2o_socket_close (int ) ;
 int h2o_tunnel_establish (int ,TYPE_1__*,int ,int ) ;

__attribute__((used)) static void on_websocket_upgrade_complete(void *_info, h2o_socket_t *sock, size_t reqsize)
{
    struct rp_ws_upgrade_info_t *info = _info;

    if (sock != ((void*)0)) {
        h2o_buffer_consume(&sock->input, reqsize);
        h2o_tunnel_establish(info->ctx, sock, info->upstream_sock, info->timeout);
    } else {
        h2o_socket_close(info->upstream_sock);
    }
    free(info);
}
