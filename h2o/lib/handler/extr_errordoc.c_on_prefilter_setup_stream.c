
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;
typedef struct TYPE_15__ TYPE_12__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


struct TYPE_16__ {size_t size; TYPE_5__ const* entries; } ;
struct st_errordoc_prefilter_t {int super; TYPE_1__ res_headers; int reason; int status; int req_headers; } ;
struct TYPE_19__ {size_t size; TYPE_5__* entries; int * member_0; } ;
struct TYPE_17__ {TYPE_4__ headers; int reason; int status; } ;
struct TYPE_18__ {TYPE_2__ res; int pool; int headers; } ;
typedef TYPE_3__ h2o_req_t ;
typedef int h2o_req_prefilter_t ;
typedef int h2o_ostream_t ;
typedef TYPE_4__ h2o_headers_t ;
struct TYPE_20__ {int * name; } ;
typedef TYPE_5__ h2o_header_t ;
struct TYPE_15__ {int buf; } ;
struct TYPE_14__ {int buf; } ;
struct TYPE_13__ {int buf; } ;


 TYPE_12__* H2O_TOKEN_CONTENT_LANGUAGE ;
 TYPE_11__* H2O_TOKEN_CONTENT_TYPE ;
 TYPE_10__* H2O_TOKEN_SET_COOKIE ;
 int add_header (int *,TYPE_4__*,TYPE_5__ const*) ;
 int h2o_setup_next_prefilter (int *,TYPE_3__*,int **) ;

__attribute__((used)) static void on_prefilter_setup_stream(h2o_req_prefilter_t *_self, h2o_req_t *req, h2o_ostream_t **slot)
{
    struct st_errordoc_prefilter_t *self = (void *)_self;
    h2o_headers_t headers_merged = {((void*)0)};
    size_t i;


    req->headers = self->req_headers;
    req->res.status = self->status;
    req->res.reason = self->reason;


    for (i = 0; i != self->res_headers.size; ++i)
        add_header(&req->pool, &headers_merged, self->res_headers.entries + i);
    for (i = 0; i != req->res.headers.size; ++i) {
        const h2o_header_t *header = req->res.headers.entries + i;
        if (header->name == &H2O_TOKEN_CONTENT_TYPE->buf || header->name == &H2O_TOKEN_CONTENT_LANGUAGE->buf ||
            header->name == &H2O_TOKEN_SET_COOKIE->buf)
            add_header(&req->pool, &headers_merged, header);
    }
    req->res.headers = headers_merged;

    h2o_setup_next_prefilter(&self->super, req, slot);
}
