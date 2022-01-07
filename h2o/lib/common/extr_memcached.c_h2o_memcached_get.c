
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int h2o_multithread_receiver_t ;
struct TYPE_8__ {int value_is_encoded; void* cb_data; int cb; int * receiver; } ;
struct TYPE_7__ {TYPE_2__ get; } ;
struct TYPE_9__ {TYPE_1__ data; } ;
typedef TYPE_3__ h2o_memcached_req_t ;
typedef int h2o_memcached_get_cb ;
typedef int h2o_memcached_context_t ;
typedef int h2o_iovec_t ;


 int H2O_MEMCACHED_ENCODE_KEY ;
 int H2O_MEMCACHED_ENCODE_VALUE ;
 int REQ_TYPE_GET ;
 TYPE_3__* create_req (int *,int ,int ,int) ;
 int dispatch (int *,TYPE_3__*) ;

h2o_memcached_req_t *h2o_memcached_get(h2o_memcached_context_t *ctx, h2o_multithread_receiver_t *receiver, h2o_iovec_t key,
                                       h2o_memcached_get_cb cb, void *cb_data, int flags)
{
    h2o_memcached_req_t *req = create_req(ctx, REQ_TYPE_GET, key, (flags & H2O_MEMCACHED_ENCODE_KEY) != 0);
    req->data.get.receiver = receiver;
    req->data.get.cb = cb;
    req->data.get.cb_data = cb_data;
    req->data.get.value_is_encoded = (flags & H2O_MEMCACHED_ENCODE_VALUE) != 0;
    dispatch(ctx, req);
    return req;
}
