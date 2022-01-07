
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_6__ ;
typedef struct TYPE_26__ TYPE_5__ ;
typedef struct TYPE_25__ TYPE_4__ ;
typedef struct TYPE_24__ TYPE_3__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;
typedef struct TYPE_21__ TYPE_16__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_14__ ;
typedef struct TYPE_18__ TYPE_13__ ;


typedef int uint8_t ;
typedef int req ;
typedef int header_table ;
struct TYPE_21__ {int size; TYPE_3__* entries; } ;
struct TYPE_20__ {int len; int base; } ;
struct TYPE_18__ {int len; int base; } ;
struct TYPE_19__ {int len; int base; } ;
struct TYPE_25__ {int * scheme; TYPE_15__ path; TYPE_13__ method; TYPE_14__ authority; } ;
struct TYPE_26__ {int hpack_capacity; int pool; TYPE_16__ headers; TYPE_4__ input; } ;
typedef TYPE_5__ h2o_req_t ;
struct TYPE_27__ {int len; scalar_t__ base; } ;
typedef TYPE_6__ h2o_iovec_t ;
typedef TYPE_5__ h2o_hpack_header_table_t ;
struct TYPE_23__ {int len; int base; } ;
struct TYPE_24__ {TYPE_2__ value; TYPE_1__* name; } ;
struct TYPE_22__ {int len; int base; } ;


 int H2O_STRLIT (char*) ;
 int H2O_URL_SCHEME_HTTP ;
 int H2O_URL_SCHEME_HTTPS ;
 int h2o_hpack_decode_header ;
 int h2o_hpack_dispose_header_table (TYPE_5__*) ;
 int h2o_hpack_parse_request (int *,int ,TYPE_5__*,TYPE_13__*,int **,TYPE_14__*,TYPE_15__*,TYPE_16__*,int*,size_t*,int *,int const*,int ,char const**) ;
 int h2o_lcstris (int ,int ,int ) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_memis (int ,int ,int ) ;
 scalar_t__ memcmp (int ,int ) ;
 int memset (TYPE_5__*,int ,int) ;
 int ok (int) ;

__attribute__((used)) static void test_request(h2o_iovec_t first_req, h2o_iovec_t second_req, h2o_iovec_t third_req)
{
    h2o_hpack_header_table_t header_table;
    h2o_req_t req;
    h2o_iovec_t in;
    int r, pseudo_headers_map;
    size_t content_length;
    const char *err_desc = ((void*)0);

    memset(&header_table, 0, sizeof(header_table));
    header_table.hpack_capacity = 4096;

    memset(&req, 0, sizeof(req));
    h2o_mem_init_pool(&req.pool);
    in = first_req;
    r = h2o_hpack_parse_request(&req.pool, h2o_hpack_decode_header, &header_table, &req.input.method, &req.input.scheme,
                                &req.input.authority, &req.input.path, &req.headers, &pseudo_headers_map, &content_length, ((void*)0),
                                (const uint8_t *)in.base, in.len, &err_desc);
    ok(r == 0);
    ok(req.input.authority.len == 15);
    ok(memcmp(req.input.authority.base, H2O_STRLIT("www.example.com")) == 0);
    ok(req.input.method.len == 3);
    ok(memcmp(req.input.method.base, H2O_STRLIT("GET")) == 0);
    ok(req.input.path.len == 1);
    ok(memcmp(req.input.path.base, H2O_STRLIT("/")) == 0);
    ok(req.input.scheme == &H2O_URL_SCHEME_HTTP);
    ok(req.headers.size == 0);

    h2o_mem_clear_pool(&req.pool);

    memset(&req, 0, sizeof(req));
    h2o_mem_init_pool(&req.pool);
    in = second_req;
    r = h2o_hpack_parse_request(&req.pool, h2o_hpack_decode_header, &header_table, &req.input.method, &req.input.scheme,
                                &req.input.authority, &req.input.path, &req.headers, &pseudo_headers_map, &content_length, ((void*)0),
                                (const uint8_t *)in.base, in.len, &err_desc);
    ok(r == 0);
    ok(req.input.authority.len == 15);
    ok(memcmp(req.input.authority.base, H2O_STRLIT("www.example.com")) == 0);
    ok(req.input.method.len == 3);
    ok(memcmp(req.input.method.base, H2O_STRLIT("GET")) == 0);
    ok(req.input.path.len == 1);
    ok(memcmp(req.input.path.base, H2O_STRLIT("/")) == 0);
    ok(req.input.scheme == &H2O_URL_SCHEME_HTTP);
    ok(req.headers.size == 1);
    ok(h2o_memis(req.headers.entries[0].name->base, req.headers.entries[0].name->len, H2O_STRLIT("cache-control")));
    ok(h2o_lcstris(req.headers.entries[0].value.base, req.headers.entries[0].value.len, H2O_STRLIT("no-cache")));

    h2o_mem_clear_pool(&req.pool);

    memset(&req, 0, sizeof(req));
    h2o_mem_init_pool(&req.pool);
    in = third_req;
    r = h2o_hpack_parse_request(&req.pool, h2o_hpack_decode_header, &header_table, &req.input.method, &req.input.scheme,
                                &req.input.authority, &req.input.path, &req.headers, &pseudo_headers_map, &content_length, ((void*)0),
                                (const uint8_t *)in.base, in.len, &err_desc);
    ok(r == 0);
    ok(req.input.authority.len == 15);
    ok(memcmp(req.input.authority.base, H2O_STRLIT("www.example.com")) == 0);
    ok(req.input.method.len == 3);
    ok(memcmp(req.input.method.base, H2O_STRLIT("GET")) == 0);
    ok(req.input.path.len == 11);
    ok(memcmp(req.input.path.base, H2O_STRLIT("/index.html")) == 0);
    ok(req.input.scheme == &H2O_URL_SCHEME_HTTPS);
    ok(req.headers.size == 1);
    ok(h2o_memis(req.headers.entries[0].name->base, req.headers.entries[0].name->len, H2O_STRLIT("custom-key")));
    ok(h2o_lcstris(req.headers.entries[0].value.base, req.headers.entries[0].value.len, H2O_STRLIT("custom-value")));

    h2o_hpack_dispose_header_table(&header_table);
    h2o_mem_clear_pool(&req.pool);
}
