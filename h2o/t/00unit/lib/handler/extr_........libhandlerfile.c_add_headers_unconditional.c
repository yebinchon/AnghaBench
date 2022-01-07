
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int etag; } ;
struct TYPE_7__ {int ref; } ;
struct st_h2o_sendfile_generator_t {scalar_t__ send_vary; TYPE_3__ header_bufs; TYPE_2__ file; scalar_t__ send_etag; } ;
struct TYPE_6__ {int headers; } ;
struct TYPE_9__ {TYPE_1__ res; int pool; } ;
typedef TYPE_4__ h2o_req_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_ETAG ;
 int H2O_TOKEN_VARY ;
 int h2o_add_header (int *,int *,int ,int *,int ,size_t) ;
 size_t h2o_filecache_get_etag (int ,int ) ;
 int h2o_set_header_token (int *,int *,int ,int ) ;

__attribute__((used)) static void add_headers_unconditional(struct st_h2o_sendfile_generator_t *self, h2o_req_t *req)
{




    if (self->send_etag) {
        size_t etag_len = h2o_filecache_get_etag(self->file.ref, self->header_bufs.etag);
        h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_ETAG, ((void*)0), self->header_bufs.etag, etag_len);
    }
    if (self->send_vary)
        h2o_set_header_token(&req->pool, &req->res.headers, H2O_TOKEN_VARY, H2O_STRLIT("accept-encoding"));
}
