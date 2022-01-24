#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;
typedef  struct TYPE_12__   TYPE_10__ ;

/* Type definitions */
struct TYPE_12__ {int /*<<< orphan*/  size; int /*<<< orphan*/  entries; } ;
struct TYPE_14__ {int status; char* reason; TYPE_10__ headers; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ h2o_res_t ;
typedef  int /*<<< orphan*/  h2o_mem_pool_t ;
struct TYPE_15__ {int hpack_capacity; int /*<<< orphan*/ * member_0; } ;
typedef  TYPE_2__ h2o_hpack_header_table_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ bytes; } ;
typedef  TYPE_3__ h2o_buffer_t ;
struct TYPE_13__ {int /*<<< orphan*/  max_frame_size; } ;

/* Variables and functions */
 TYPE_11__ H2O_HTTP2_SETTINGS_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_TE ; 
 int /*<<< orphan*/  SIZE_MAX ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_10__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_3__**,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__**,TYPE_2__*,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  h2o_socket_buffer_prototype ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 

void FUNC11(void)
{
    h2o_mem_pool_t pool;
    FUNC8(&pool);
    h2o_hpack_header_table_t table = {NULL};
    table.hpack_capacity = 4096;
    h2o_res_t res = {0};
    h2o_buffer_t *buf;
    FUNC4(&buf, &h2o_socket_buffer_prototype);

    res.status = 200;
    res.reason = "OK";
    FUNC1(&pool, &res.headers, H2O_TOKEN_TE, NULL, FUNC0("test"));

    FUNC6(&buf, &table, 1, H2O_HTTP2_SETTINGS_DEFAULT.max_frame_size, res.status, res.headers.entries,
                               res.headers.size, NULL, SIZE_MAX);
    FUNC10(FUNC9(buf->bytes + 9, buf->size - 9,
                 FUNC0("\x88"     /* :status:200 */
                            "\x40\x02" /* literal header w. incremental indexing, raw, TE */
                            "te"
                            "\x83" /* header value, huffman */
                            "IP\x9f" /* test */)));
    FUNC2(&buf, buf->size);
    FUNC6(&buf, &table, 1, H2O_HTTP2_SETTINGS_DEFAULT.max_frame_size, res.status, res.headers.entries,
                               res.headers.size, NULL, SIZE_MAX);
    FUNC10(FUNC9(buf->bytes + 9, buf->size - 9,
                 FUNC0("\x88" /* :status:200 */
                            "\xbe" /* te: test, indexed */)));

    FUNC3(&buf);
    FUNC5(&table);
    FUNC7(&pool);
}