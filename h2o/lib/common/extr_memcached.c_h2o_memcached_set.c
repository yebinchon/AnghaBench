
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint32_t ;
struct TYPE_15__ {int base; int len; } ;
struct TYPE_11__ {int expiration; TYPE_7__ value; } ;
struct TYPE_12__ {TYPE_1__ set; } ;
struct TYPE_13__ {TYPE_2__ data; } ;
typedef TYPE_3__ h2o_memcached_req_t ;
typedef int h2o_memcached_context_t ;
struct TYPE_14__ {int len; int base; } ;
typedef TYPE_4__ h2o_iovec_t ;


 int H2O_MEMCACHED_ENCODE_KEY ;
 int H2O_MEMCACHED_ENCODE_VALUE ;
 int REQ_TYPE_SET ;
 TYPE_3__* create_req (int *,int ,TYPE_4__,int) ;
 int dispatch (int *,TYPE_3__*) ;
 int h2o_base64_encode (int ,int ,int,int) ;
 TYPE_7__ h2o_iovec_init (int ,int) ;
 int h2o_mem_alloc (int) ;
 int memcpy (int ,int ,int) ;

void h2o_memcached_set(h2o_memcached_context_t *ctx, h2o_iovec_t key, h2o_iovec_t value, uint32_t expiration, int flags)
{
    h2o_memcached_req_t *req = create_req(ctx, REQ_TYPE_SET, key, (flags & H2O_MEMCACHED_ENCODE_KEY) != 0);
    if ((flags & H2O_MEMCACHED_ENCODE_VALUE) != 0) {
        req->data.set.value.base = h2o_mem_alloc((value.len + 2) / 3 * 4 + 1);
        req->data.set.value.len = h2o_base64_encode(req->data.set.value.base, value.base, value.len, 1);
    } else {
        req->data.set.value = h2o_iovec_init(h2o_mem_alloc(value.len), value.len);
        memcpy(req->data.set.value.base, value.base, value.len);
    }
    req->data.set.expiration = expiration;
    dispatch(ctx, req);
}
