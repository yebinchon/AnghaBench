
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct timeval {int dummy; } ;
struct st_h2o_accept_data_t {struct timeval connected_at; int timeout; int * sock; TYPE_3__* ctx; } ;
typedef int h2o_timer_cb ;
typedef int h2o_socket_t ;
struct TYPE_7__ {TYPE_2__* ctx; } ;
typedef TYPE_3__ h2o_accept_ctx_t ;
struct TYPE_6__ {TYPE_1__* globalconf; int loop; } ;
struct TYPE_5__ {int handshake_timeout; } ;


 struct st_h2o_accept_data_t* h2o_mem_alloc (size_t) ;
 int h2o_timer_init (int *,int ) ;
 int h2o_timer_link (int ,int ,int *) ;

__attribute__((used)) static struct st_h2o_accept_data_t *create_accept_data(h2o_accept_ctx_t *ctx, h2o_socket_t *sock, struct timeval connected_at,
                                                       h2o_timer_cb timeout_cb, size_t sz)
{
    struct st_h2o_accept_data_t *data = h2o_mem_alloc(sz);
    data->ctx = ctx;
    data->sock = sock;
    h2o_timer_init(&data->timeout, timeout_cb);
    h2o_timer_link(ctx->ctx->loop, ctx->ctx->globalconf->handshake_timeout, &data->timeout);
    data->connected_at = connected_at;
    return data;
}
