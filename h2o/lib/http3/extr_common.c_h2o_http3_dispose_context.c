
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int sock; } ;
struct TYPE_5__ {int conns_accepting; int conns_by_id; TYPE_1__ sock; int clients; } ;
typedef TYPE_2__ h2o_http3_ctx_t ;


 int assert (int) ;
 int h2o_linklist_is_empty (int *) ;
 int h2o_socket_close (int ) ;
 int kh_destroy_h2o_http3_acceptmap (int ) ;
 int kh_destroy_h2o_http3_idmap (int ) ;
 scalar_t__ kh_size (int ) ;

void h2o_http3_dispose_context(h2o_http3_ctx_t *ctx)
{
    assert(kh_size(ctx->conns_by_id) == 0);
    assert(kh_size(ctx->conns_accepting) == 0);
    assert(h2o_linklist_is_empty(&ctx->clients));

    h2o_socket_close(ctx->sock.sock);
    kh_destroy_h2o_http3_idmap(ctx->conns_by_id);
    kh_destroy_h2o_http3_acceptmap(ctx->conns_accepting);
}
