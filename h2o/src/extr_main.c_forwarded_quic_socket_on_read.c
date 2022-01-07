
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int super; } ;
struct TYPE_7__ {TYPE_1__ ctx; } ;
struct listener_ctx_t {TYPE_2__ http3; } ;
struct TYPE_8__ {struct listener_ctx_t* data; } ;
typedef TYPE_3__ h2o_socket_t ;


 int h2o_http3_read_socket (int *,TYPE_3__*,int ) ;
 int rewrite_forwarded_quic_datagram ;

__attribute__((used)) static void forwarded_quic_socket_on_read(h2o_socket_t *sock, const char *err)
{
    struct listener_ctx_t *ctx = sock->data;
    h2o_http3_read_socket(&ctx->http3.ctx.super, sock, rewrite_forwarded_quic_datagram);
}
