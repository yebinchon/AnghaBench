
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int headers; } ;
struct TYPE_6__ {TYPE_1__ res; int pool; } ;
typedef TYPE_2__ h2o_req_t ;


 int H2O_SEND_ERROR_KEEP_HEADERS ;
 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_ALLOW ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_send_error_405 (TYPE_2__*,char*,char*,int ) ;

__attribute__((used)) static void send_method_not_allowed(h2o_req_t *req)
{
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_ALLOW, ((void*)0), H2O_STRLIT("GET, HEAD"));
    h2o_send_error_405(req, "Method Not Allowed", "method not allowed", H2O_SEND_ERROR_KEEP_HEADERS);
}
