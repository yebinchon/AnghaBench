
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_2__* prefilters; int pool; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_7__ {struct TYPE_7__* next; } ;
typedef TYPE_2__ h2o_req_prefilter_t ;


 TYPE_2__* h2o_mem_alloc_pool_aligned (int *,size_t,size_t) ;

h2o_req_prefilter_t *h2o_add_prefilter(h2o_req_t *req, size_t alignment, size_t sz)
{
    h2o_req_prefilter_t *prefilter = h2o_mem_alloc_pool_aligned(&req->pool, alignment, sz);
    prefilter->next = req->prefilters;
    req->prefilters = prefilter;
    return prefilter;
}
