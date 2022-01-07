
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int h2o_memcached_req_t ;
typedef int h2o_memcached_context_t ;
typedef int h2o_iovec_t ;


 int H2O_MEMCACHED_ENCODE_KEY ;
 int REQ_TYPE_DELETE ;
 int * create_req (int *,int ,int ,int) ;
 int dispatch (int *,int *) ;

void h2o_memcached_delete(h2o_memcached_context_t *ctx, h2o_iovec_t key, int flags)
{
    h2o_memcached_req_t *req = create_req(ctx, REQ_TYPE_DELETE, key, (flags & H2O_MEMCACHED_ENCODE_KEY) != 0);
    dispatch(ctx, req);
}
