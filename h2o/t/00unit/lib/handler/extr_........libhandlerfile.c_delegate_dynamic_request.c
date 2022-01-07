
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_7__ ;
typedef struct TYPE_22__ TYPE_6__ ;
typedef struct TYPE_21__ TYPE_5__ ;
typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;
typedef struct TYPE_16__ TYPE_11__ ;


struct TYPE_20__ {TYPE_7__* filereq; int hostconf; int pool; } ;
typedef TYPE_4__ h2o_req_t ;
struct TYPE_17__ {int size; TYPE_6__** entries; } ;
struct TYPE_16__ {TYPE_1__ handlers; } ;
struct TYPE_18__ {TYPE_11__ pathconf; } ;
struct TYPE_19__ {TYPE_2__ dynamic; } ;
struct TYPE_21__ {TYPE_3__ data; } ;
typedef TYPE_5__ h2o_mimemap_type_t ;
typedef void* h2o_iovec_t ;
struct TYPE_22__ {int (* on_req ) (TYPE_6__*,TYPE_4__*) ;} ;
typedef TYPE_6__ h2o_handler_t ;
struct TYPE_23__ {int local_path; void* path_info; void* script_name; } ;
typedef TYPE_7__ h2o_filereq_t ;


 int assert (int) ;
 TYPE_7__* h2o_mem_alloc_pool (int *,TYPE_7__,int) ;
 int h2o_req_bind_conf (TYPE_4__*,int ,TYPE_11__*) ;
 int h2o_strdup (int *,char const*,size_t) ;
 int stub1 (TYPE_6__*,TYPE_4__*) ;

__attribute__((used)) static int delegate_dynamic_request(h2o_req_t *req, h2o_iovec_t script_name, h2o_iovec_t path_info, const char *local_path,
                                    size_t local_path_len, h2o_mimemap_type_t *mime_type)
{
    h2o_filereq_t *filereq;
    h2o_handler_t *handler;

    assert(mime_type->data.dynamic.pathconf.handlers.size == 1);

    filereq = h2o_mem_alloc_pool(&req->pool, *filereq, 1);
    filereq->script_name = script_name;
    filereq->path_info = path_info;
    filereq->local_path = h2o_strdup(&req->pool, local_path, local_path_len);

    h2o_req_bind_conf(req, req->hostconf, &mime_type->data.dynamic.pathconf);
    req->filereq = filereq;

    handler = mime_type->data.dynamic.pathconf.handlers.entries[0];
    return handler->on_req(handler, req);
}
