
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_14__ {TYPE_7__* base; int len; } ;
struct TYPE_15__ {TYPE_4__ value; } ;
struct TYPE_12__ {TYPE_7__* base; int len; } ;
struct TYPE_11__ {int link; } ;
struct TYPE_13__ {TYPE_2__ value; TYPE_1__ message; } ;
struct TYPE_16__ {TYPE_5__ set; TYPE_3__ get; } ;
struct TYPE_17__ {int type; TYPE_6__ data; int pending; } ;
typedef TYPE_7__ h2o_memcached_req_t ;





 int assert (int) ;
 int free (TYPE_7__*) ;
 int h2o_linklist_is_linked (int *) ;
 int h2o_mem_set_secure (TYPE_7__*,int ,int ) ;

__attribute__((used)) static void free_req(h2o_memcached_req_t *req)
{
    assert(!h2o_linklist_is_linked(&req->pending));
    switch (req->type) {
    case 129:
        assert(!h2o_linklist_is_linked(&req->data.get.message.link));
        h2o_mem_set_secure(req->data.get.value.base, 0, req->data.get.value.len);
        free(req->data.get.value.base);
        break;
    case 128:
        h2o_mem_set_secure(req->data.set.value.base, 0, req->data.set.value.len);
        free(req->data.set.value.base);
        break;
    case 130:
        break;
    default:
        assert(!"FIXME");
        break;
    }
    free(req);
}
