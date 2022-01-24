#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_27__   TYPE_6__ ;
typedef  struct TYPE_26__   TYPE_5__ ;
typedef  struct TYPE_25__   TYPE_4__ ;
typedef  struct TYPE_24__   TYPE_3__ ;
typedef  struct TYPE_23__   TYPE_2__ ;
typedef  struct TYPE_22__   TYPE_1__ ;
typedef  struct TYPE_21__   TYPE_16__ ;
typedef  struct TYPE_20__   TYPE_15__ ;
typedef  struct TYPE_19__   TYPE_14__ ;
typedef  struct TYPE_18__   TYPE_13__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  req ;
typedef  int /*<<< orphan*/  header_table ;
struct TYPE_21__ {int size; TYPE_3__* entries; } ;
struct TYPE_20__ {int len; int /*<<< orphan*/  base; } ;
struct TYPE_18__ {int len; int /*<<< orphan*/  base; } ;
struct TYPE_19__ {int len; int /*<<< orphan*/  base; } ;
struct TYPE_25__ {int /*<<< orphan*/ * scheme; TYPE_15__ path; TYPE_13__ method; TYPE_14__ authority; } ;
struct TYPE_26__ {int hpack_capacity; int /*<<< orphan*/  pool; TYPE_16__ headers; TYPE_4__ input; } ;
typedef  TYPE_5__ h2o_req_t ;
struct TYPE_27__ {int /*<<< orphan*/  len; scalar_t__ base; } ;
typedef  TYPE_6__ h2o_iovec_t ;
typedef  TYPE_5__ h2o_hpack_header_table_t ;
struct TYPE_23__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_24__ {TYPE_2__ value; TYPE_1__* name; } ;
struct TYPE_22__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTP ; 
 int /*<<< orphan*/  H2O_URL_SCHEME_HTTPS ; 
 int /*<<< orphan*/  h2o_hpack_decode_header ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_5__*,TYPE_13__*,int /*<<< orphan*/ **,TYPE_14__*,TYPE_15__*,TYPE_16__*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,char const**) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_5__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 

__attribute__((used)) static void FUNC10(h2o_iovec_t first_req, h2o_iovec_t second_req, h2o_iovec_t third_req)
{
    h2o_hpack_header_table_t header_table;
    h2o_req_t req;
    h2o_iovec_t in;
    int r, pseudo_headers_map;
    size_t content_length;
    const char *err_desc = NULL;

    FUNC8(&header_table, 0, sizeof(header_table));
    header_table.hpack_capacity = 4096;

    FUNC8(&req, 0, sizeof(req));
    FUNC5(&req.pool);
    in = first_req;
    r = FUNC2(&req.pool, h2o_hpack_decode_header, &header_table, &req.input.method, &req.input.scheme,
                                &req.input.authority, &req.input.path, &req.headers, &pseudo_headers_map, &content_length, NULL,
                                (const uint8_t *)in.base, in.len, &err_desc);
    FUNC9(r == 0);
    FUNC9(req.input.authority.len == 15);
    FUNC9(FUNC7(req.input.authority.base, FUNC0("www.example.com")) == 0);
    FUNC9(req.input.method.len == 3);
    FUNC9(FUNC7(req.input.method.base, FUNC0("GET")) == 0);
    FUNC9(req.input.path.len == 1);
    FUNC9(FUNC7(req.input.path.base, FUNC0("/")) == 0);
    FUNC9(req.input.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(req.headers.size == 0);

    FUNC4(&req.pool);

    FUNC8(&req, 0, sizeof(req));
    FUNC5(&req.pool);
    in = second_req;
    r = FUNC2(&req.pool, h2o_hpack_decode_header, &header_table, &req.input.method, &req.input.scheme,
                                &req.input.authority, &req.input.path, &req.headers, &pseudo_headers_map, &content_length, NULL,
                                (const uint8_t *)in.base, in.len, &err_desc);
    FUNC9(r == 0);
    FUNC9(req.input.authority.len == 15);
    FUNC9(FUNC7(req.input.authority.base, FUNC0("www.example.com")) == 0);
    FUNC9(req.input.method.len == 3);
    FUNC9(FUNC7(req.input.method.base, FUNC0("GET")) == 0);
    FUNC9(req.input.path.len == 1);
    FUNC9(FUNC7(req.input.path.base, FUNC0("/")) == 0);
    FUNC9(req.input.scheme == &H2O_URL_SCHEME_HTTP);
    FUNC9(req.headers.size == 1);
    FUNC9(FUNC6(req.headers.entries[0].name->base, req.headers.entries[0].name->len, FUNC0("cache-control")));
    FUNC9(FUNC3(req.headers.entries[0].value.base, req.headers.entries[0].value.len, FUNC0("no-cache")));

    FUNC4(&req.pool);

    FUNC8(&req, 0, sizeof(req));
    FUNC5(&req.pool);
    in = third_req;
    r = FUNC2(&req.pool, h2o_hpack_decode_header, &header_table, &req.input.method, &req.input.scheme,
                                &req.input.authority, &req.input.path, &req.headers, &pseudo_headers_map, &content_length, NULL,
                                (const uint8_t *)in.base, in.len, &err_desc);
    FUNC9(r == 0);
    FUNC9(req.input.authority.len == 15);
    FUNC9(FUNC7(req.input.authority.base, FUNC0("www.example.com")) == 0);
    FUNC9(req.input.method.len == 3);
    FUNC9(FUNC7(req.input.method.base, FUNC0("GET")) == 0);
    FUNC9(req.input.path.len == 11);
    FUNC9(FUNC7(req.input.path.base, FUNC0("/index.html")) == 0);
    FUNC9(req.input.scheme == &H2O_URL_SCHEME_HTTPS);
    FUNC9(req.headers.size == 1);
    FUNC9(FUNC6(req.headers.entries[0].name->base, req.headers.entries[0].name->len, FUNC0("custom-key")));
    FUNC9(FUNC3(req.headers.entries[0].value.base, req.headers.entries[0].value.len, FUNC0("custom-value")));

    FUNC1(&header_table);
    FUNC4(&req.pool);
}