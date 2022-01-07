
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int pool; } ;
typedef TYPE_1__ h2o_req_t ;
struct TYPE_8__ {int * send_informational; int * stop; int * do_send; struct TYPE_8__* next; } ;
typedef TYPE_2__ h2o_ostream_t ;


 TYPE_2__* h2o_mem_alloc_pool_aligned (int *,size_t,size_t) ;

h2o_ostream_t *h2o_add_ostream(h2o_req_t *req, size_t alignment, size_t sz, h2o_ostream_t **slot)
{
    h2o_ostream_t *ostr = h2o_mem_alloc_pool_aligned(&req->pool, alignment, sz);
    ostr->next = *slot;
    ostr->do_send = ((void*)0);
    ostr->stop = ((void*)0);
    ostr->send_informational = ((void*)0);

    *slot = ostr;

    return ostr;
}
