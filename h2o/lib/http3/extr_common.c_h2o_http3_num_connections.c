
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int conns_accepting; int conns_by_id; } ;
typedef TYPE_1__ h2o_http3_ctx_t ;


 size_t kh_size (int ) ;

size_t h2o_http3_num_connections(h2o_http3_ctx_t *ctx)
{
    return kh_size(ctx->conns_by_id) + kh_size(ctx->conns_accepting);
}
