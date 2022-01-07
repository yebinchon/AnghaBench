
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_8__ {int cb; } ;
struct TYPE_7__ {int on_connect; } ;
struct TYPE_9__ {TYPE_2__ _timeout; TYPE_1__ _cb; int * write_req; int * update_window; int * get_socket; int * steal_socket; int cancel; void* data; int * ctx; int * pool; } ;
typedef TYPE_3__ h2o_httpclient_t ;
typedef int h2o_httpclient_ctx_t ;
typedef int h2o_httpclient_connect_cb ;


 size_t SZ_MAX (int ,int ) ;
 int do_cancel ;
 int h2o_httpclient__h1_size ;
 int h2o_httpclient__h2_size ;
 TYPE_3__* h2o_mem_alloc (size_t) ;
 int memset (TYPE_3__*,int ,size_t) ;
 int on_connect_timeout ;

__attribute__((used)) static h2o_httpclient_t *create_client(h2o_mem_pool_t *pool, void *data, h2o_httpclient_ctx_t *ctx,
                                       h2o_httpclient_connect_cb on_connect)
{

    size_t sz = ((h2o_httpclient__h1_size) > (h2o_httpclient__h2_size) ? (h2o_httpclient__h1_size) : (h2o_httpclient__h2_size));

    h2o_httpclient_t *client = h2o_mem_alloc(sz);
    memset(client, 0, sz);
    client->pool = pool;
    client->ctx = ctx;
    client->data = data;
    client->cancel = do_cancel;
    client->steal_socket = ((void*)0);
    client->get_socket = ((void*)0);
    client->update_window = ((void*)0);
    client->write_req = ((void*)0);
    client->_cb.on_connect = on_connect;
    client->_timeout.cb = on_connect_timeout;

    return client;
}
