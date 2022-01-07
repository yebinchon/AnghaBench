
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_12__ {int status; char* reason; int headers; } ;
struct TYPE_11__ {int len; int base; } ;
struct TYPE_10__ {int len; int base; } ;
struct TYPE_13__ {int entity; TYPE_3__ res; int pool; TYPE_2__ path_normalized; TYPE_1__ method; } ;
typedef TYPE_4__ h2o_req_t ;
typedef int h2o_handler_t ;
struct TYPE_14__ {int * member_1; int * member_0; } ;
typedef TYPE_5__ h2o_generator_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_CONTENT_TYPE ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 scalar_t__ h2o_memis (int ,int ,int ) ;
 int h2o_send (TYPE_4__*,int *,int,int) ;
 int h2o_start_response (TYPE_4__*,TYPE_5__*) ;

__attribute__((used)) static int post_test(h2o_handler_t *self, h2o_req_t *req)
{
    if (h2o_memis(req->method.base, req->method.len, H2O_STRLIT("POST")) &&
        h2o_memis(req->path_normalized.base, req->path_normalized.len, H2O_STRLIT("/post-test/"))) {
        static h2o_generator_t generator = {((void*)0), ((void*)0)};
        req->res.status = 200;
        req->res.reason = "OK";
        h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_TYPE, ((void*)0), H2O_STRLIT("text/plain; charset=utf-8"));
        h2o_start_response(req, &generator);
        h2o_send(req, &req->entity, 1, 1);
        return 0;
    }

    return -1;
}
