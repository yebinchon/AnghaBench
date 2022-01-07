
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_6__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {TYPE_2__* ctx; } ;
struct st_h2o_memcached_resumption_accept_data_t {TYPE_3__ super; int get_req; } ;
struct TYPE_10__ {struct st_h2o_memcached_resumption_accept_data_t* data; } ;
typedef TYPE_4__ h2o_socket_t ;
typedef int h2o_iovec_t ;
struct TYPE_7__ {int ctx; } ;
struct TYPE_11__ {TYPE_1__ memcached; } ;
struct TYPE_8__ {int libmemcached_receiver; } ;


 int H2O_MEMCACHED_ENCODE_KEY ;
 int H2O_MEMCACHED_ENCODE_VALUE ;
 TYPE_6__ async_resumption_context ;
 int h2o_memcached_get (int ,int ,int ,int ,struct st_h2o_memcached_resumption_accept_data_t*,int) ;
 int memcached_resumption_on_get ;

__attribute__((used)) static void memcached_resumption_get(h2o_socket_t *sock, h2o_iovec_t session_id)
{
    struct st_h2o_memcached_resumption_accept_data_t *data = sock->data;

    data->get_req = h2o_memcached_get(async_resumption_context.memcached.ctx, data->super.ctx->libmemcached_receiver, session_id,
                                      memcached_resumption_on_get, data, H2O_MEMCACHED_ENCODE_KEY | H2O_MEMCACHED_ENCODE_VALUE);
}
