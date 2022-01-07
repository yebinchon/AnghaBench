
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int status; char* reason; int headers; } ;
struct TYPE_10__ {int len; int base; } ;
struct TYPE_11__ {TYPE_1__ res; int pool; TYPE_2__ method; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_iovec_t ;
typedef int h2o_handler_t ;
struct TYPE_12__ {int * member_1; int * member_0; } ;
typedef TYPE_4__ h2o_generator_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_CONTENT_TYPE ;
 int SIZE_MAX ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_memis (int ,int ,int ) ;
 int h2o_send (TYPE_3__*,int *,int,int) ;
 int h2o_start_response (TYPE_3__*,TYPE_4__*) ;
 int h2o_strdup (int *,char*,int ) ;

__attribute__((used)) static int chunked_test(h2o_handler_t *self, h2o_req_t *req)
{
    static h2o_generator_t generator = {((void*)0), ((void*)0)};

    if (!h2o_memis(req->method.base, req->method.len, H2O_STRLIT("GET")))
        return -1;

    h2o_iovec_t body = h2o_strdup(&req->pool, "hello world\n", SIZE_MAX);
    req->res.status = 200;
    req->res.reason = "OK";
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_CONTENT_TYPE, ((void*)0), H2O_STRLIT("text/plain"));
    h2o_start_response(req, &generator);
    h2o_send(req, &body, 1, 1);

    return 0;
}
