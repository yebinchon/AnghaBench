
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;
typedef struct TYPE_13__ TYPE_11__ ;
typedef struct TYPE_12__ TYPE_10__ ;


struct TYPE_12__ {int size; int entries; } ;
struct TYPE_14__ {int status; char* reason; TYPE_10__ headers; int member_0; } ;
typedef TYPE_1__ h2o_res_t ;
typedef int h2o_mem_pool_t ;
struct TYPE_15__ {int hpack_capacity; int * member_0; } ;
typedef TYPE_2__ h2o_hpack_header_table_t ;
struct TYPE_16__ {scalar_t__ size; scalar_t__ bytes; } ;
typedef TYPE_3__ h2o_buffer_t ;
struct TYPE_13__ {int max_frame_size; } ;


 TYPE_11__ H2O_HTTP2_SETTINGS_DEFAULT ;
 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_TE ;
 int SIZE_MAX ;
 int h2o_add_header (int *,TYPE_10__*,int ,int *,int ) ;
 int h2o_buffer_consume (TYPE_3__**,scalar_t__) ;
 int h2o_buffer_dispose (TYPE_3__**) ;
 int h2o_buffer_init (TYPE_3__**,int *) ;
 int h2o_hpack_dispose_header_table (TYPE_2__*) ;
 int h2o_hpack_flatten_response (TYPE_3__**,TYPE_2__*,int,int ,int,int ,int ,int *,int ) ;
 int h2o_mem_clear_pool (int *) ;
 int h2o_mem_init_pool (int *) ;
 int h2o_memis (scalar_t__,scalar_t__,int ) ;
 int h2o_socket_buffer_prototype ;
 int ok (int ) ;

void test_token_wo_hpack_id(void)
{
    h2o_mem_pool_t pool;
    h2o_mem_init_pool(&pool);
    h2o_hpack_header_table_t table = {((void*)0)};
    table.hpack_capacity = 4096;
    h2o_res_t res = {0};
    h2o_buffer_t *buf;
    h2o_buffer_init(&buf, &h2o_socket_buffer_prototype);

    res.status = 200;
    res.reason = "OK";
    h2o_add_header(&pool, &res.headers, H2O_TOKEN_TE, ((void*)0), H2O_STRLIT("test"));

    h2o_hpack_flatten_response(&buf, &table, 1, H2O_HTTP2_SETTINGS_DEFAULT.max_frame_size, res.status, res.headers.entries,
                               res.headers.size, ((void*)0), SIZE_MAX);
    ok(h2o_memis(buf->bytes + 9, buf->size - 9,
                 H2O_STRLIT("\x88"
                            "\x40\x02"
                            "te"
                            "\x83"
                            "IP\x9f" )));
    h2o_buffer_consume(&buf, buf->size);
    h2o_hpack_flatten_response(&buf, &table, 1, H2O_HTTP2_SETTINGS_DEFAULT.max_frame_size, res.status, res.headers.entries,
                               res.headers.size, ((void*)0), SIZE_MAX);
    ok(h2o_memis(buf->bytes + 9, buf->size - 9,
                 H2O_STRLIT("\x88"
                            "\xbe" )));

    h2o_buffer_dispose(&buf);
    h2o_hpack_dispose_header_table(&table);
    h2o_mem_clear_pool(&pool);
}
