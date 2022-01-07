
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int headers; } ;
struct TYPE_7__ {TYPE_1__ res; int pool; } ;
typedef TYPE_2__ h2o_req_t ;
typedef int h2o_mruby_shared_context_t ;
struct TYPE_8__ {int len; int base; } ;
typedef TYPE_3__ h2o_iovec_t ;


 int h2o_add_header_by_str (int *,int *,int ,int ,int,int *,int ,int ) ;

__attribute__((used)) static int handle_early_hints_header(h2o_mruby_shared_context_t *shared_ctx, h2o_iovec_t *name, h2o_iovec_t value, void *_req)
{
    h2o_req_t *req = _req;
    h2o_add_header_by_str(&req->pool, &req->res.headers, name->base, name->len, 1, ((void*)0), value.base, value.len);
    return 0;
}
