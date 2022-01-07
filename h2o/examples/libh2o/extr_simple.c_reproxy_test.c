
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int status; char* reason; int headers; } ;
struct TYPE_6__ {int len; int base; } ;
struct TYPE_8__ {TYPE_2__ res; int pool; TYPE_1__ method; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_handler_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_X_REPROXY_URL ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_memis (int ,int ,int ) ;
 int h2o_send_inline (TYPE_3__*,int ) ;

__attribute__((used)) static int reproxy_test(h2o_handler_t *self, h2o_req_t *req)
{
    if (!h2o_memis(req->method.base, req->method.len, H2O_STRLIT("GET")))
        return -1;

    req->res.status = 200;
    req->res.reason = "OK";
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_X_REPROXY_URL, ((void*)0), H2O_STRLIT("http://www.ietf.org/"));
    h2o_send_inline(req, H2O_STRLIT("you should never see this!\n"));

    return 0;
}
