
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct st_h2o_http1_finalostream_t {int chunked_buf; } ;
struct TYPE_5__ {int headers; } ;
struct TYPE_6__ {int pool; TYPE_1__ res; } ;
typedef TYPE_2__ h2o_req_t ;


 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_TRANSFER_ENCODING ;
 int h2o_add_header (int *,int *,int ,int *,int ) ;
 int h2o_mem_alloc_pool_aligned (int *,int,int) ;
 scalar_t__ should_use_chunked_encoding (TYPE_2__*) ;

__attribute__((used)) static void setup_chunked(struct st_h2o_http1_finalostream_t *self, h2o_req_t *req)
{
    if (should_use_chunked_encoding(req)) {
        h2o_add_header(&req->pool, &req->res.headers, H2O_TOKEN_TRANSFER_ENCODING, ((void*)0), H2O_STRLIT("chunked"));
        self->chunked_buf = h2o_mem_alloc_pool_aligned(&req->pool, 1, sizeof(size_t) * 2 + sizeof("\r\n"));
    }
}
