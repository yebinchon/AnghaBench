
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int h2o_mem_pool_t ;
struct TYPE_4__ {char* base; size_t len; } ;
typedef TYPE_1__ h2o_iovec_t ;


 TYPE_1__* h2o_mem_alloc_shared (int *,int,int *) ;

__attribute__((used)) static h2o_iovec_t *alloc_buf(h2o_mem_pool_t *pool, size_t len)
{
    h2o_iovec_t *buf = h2o_mem_alloc_shared(pool, sizeof(h2o_iovec_t) + len + 1, ((void*)0));
    buf->base = (char *)buf + sizeof(h2o_iovec_t);
    buf->len = len;
    return buf;
}
