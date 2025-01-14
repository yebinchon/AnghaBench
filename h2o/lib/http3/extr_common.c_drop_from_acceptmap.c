
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int khint_t ;
struct TYPE_5__ {int conns_accepting; } ;
typedef TYPE_1__ h2o_http3_ctx_t ;
struct TYPE_6__ {scalar_t__ _accept_hashkey; } ;
typedef TYPE_2__ h2o_http3_conn_t ;


 int kh_del_h2o_http3_acceptmap (int ,int ) ;
 int kh_end (int ) ;
 int kh_get_h2o_http3_acceptmap (int ,scalar_t__) ;

__attribute__((used)) static void drop_from_acceptmap(h2o_http3_ctx_t *ctx, h2o_http3_conn_t *conn)
{
    if (conn->_accept_hashkey != 0) {
        khint_t iter;
        if ((iter = kh_get_h2o_http3_acceptmap(ctx->conns_accepting, conn->_accept_hashkey)) != kh_end(ctx->conns_accepting))
            kh_del_h2o_http3_acceptmap(ctx->conns_accepting, iter);
        conn->_accept_hashkey = 0;
    }
}
