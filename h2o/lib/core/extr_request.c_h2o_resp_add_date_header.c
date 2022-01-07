
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {TYPE_3__* str; } ;
typedef TYPE_4__ h2o_timestamp_t ;
struct TYPE_9__ {int headers; } ;
struct TYPE_12__ {TYPE_2__ res; int pool; TYPE_1__* conn; } ;
typedef TYPE_5__ h2o_req_t ;
struct TYPE_10__ {int rfc1123; } ;
struct TYPE_8__ {int ctx; } ;


 int H2O_TOKEN_DATE ;
 int h2o_add_header (int *,int *,int ,int *,int ,int ) ;
 TYPE_4__ h2o_get_timestamp (int ,int *) ;
 int strlen (int ) ;

void h2o_resp_add_date_header(h2o_req_t *req)
{
    h2o_timestamp_t ts = h2o_get_timestamp(req->conn->ctx, &req->pool);
    h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_DATE, ((void*)0), ts.str->rfc1123, strlen(ts.str->rfc1123));
}
