
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
struct TYPE_12__ {int size; int entries; } ;
struct TYPE_13__ {TYPE_1__ headers; int status; } ;
typedef TYPE_2__ h2o_res_t ;
struct TYPE_14__ {int length; int payload; } ;
typedef TYPE_3__ h2o_http2_frame_t ;
typedef int h2o_hpack_header_table_t ;
struct TYPE_15__ {int size; scalar_t__ bytes; } ;
typedef TYPE_4__ h2o_buffer_t ;
struct TYPE_11__ {int max_frame_size; } ;


 TYPE_10__ H2O_HTTP2_SETTINGS_DEFAULT ;
 int SIZE_MAX ;
 int h2o_buffer_dispose (TYPE_4__**) ;
 int h2o_buffer_init (TYPE_4__**,int *) ;
 int h2o_hpack_flatten_response (TYPE_4__**,int *,int,int ,int ,int ,int ,int *,int ) ;
 scalar_t__ h2o_http2_decode_frame (TYPE_3__*,int *,int ,int ,char const**) ;
 int h2o_memis (int ,int ,char const*,size_t) ;
 int h2o_socket_buffer_prototype ;
 int ok (int) ;

__attribute__((used)) static void check_flatten(h2o_hpack_header_table_t *header_table, h2o_res_t *res, const char *expected, size_t expected_len)
{
    h2o_buffer_t *buf;
    h2o_http2_frame_t frame;
    const char *err_desc;

    h2o_buffer_init(&buf, &h2o_socket_buffer_prototype);
    h2o_hpack_flatten_response(&buf, header_table, 1, H2O_HTTP2_SETTINGS_DEFAULT.max_frame_size, res->status, res->headers.entries,
                               res->headers.size, ((void*)0), SIZE_MAX);

    ok(h2o_http2_decode_frame(&frame, (uint8_t *)buf->bytes, buf->size, H2O_HTTP2_SETTINGS_DEFAULT.max_frame_size, &err_desc) > 0);
    ok(h2o_memis(frame.payload, frame.length, expected, expected_len));

    h2o_buffer_dispose(&buf);
}
