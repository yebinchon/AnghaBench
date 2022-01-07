
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;
typedef struct TYPE_11__ TYPE_10__ ;


typedef int uint8_t ;
typedef size_t ssize_t ;
struct TYPE_13__ {int base; } ;
typedef TYPE_2__ h2o_iovec_t ;
struct TYPE_12__ {TYPE_4__* buf; } ;
struct TYPE_14__ {int _read_expect; int * http2_origin_frame; TYPE_1__ _write; } ;
typedef TYPE_3__ h2o_http2_conn_t ;
struct TYPE_16__ {scalar_t__ len; int base; } ;
struct TYPE_15__ {int size; } ;
struct TYPE_11__ {size_t len; int base; } ;


 TYPE_10__ CONNECTION_PREFACE ;
 size_t H2O_HTTP2_ERROR_INCOMPLETE ;
 size_t H2O_HTTP2_ERROR_PROTOCOL_CLOSE_IMMEDIATELY ;
 TYPE_9__ SERVER_PREFACE ;
 int expect_default ;
 TYPE_2__ h2o_buffer_reserve (TYPE_4__**,scalar_t__) ;
 int h2o_http2_conn_request_write (TYPE_3__*) ;
 int h2o_http2_encode_origin_frame (TYPE_4__**,int ) ;
 scalar_t__ memcmp (int const*,int ,size_t) ;
 int memcpy (int ,int ,scalar_t__) ;

__attribute__((used)) static ssize_t expect_preface(h2o_http2_conn_t *conn, const uint8_t *src, size_t len, const char **err_desc)
{
    if (len < CONNECTION_PREFACE.len) {
        return H2O_HTTP2_ERROR_INCOMPLETE;
    }
    if (memcmp(src, CONNECTION_PREFACE.base, CONNECTION_PREFACE.len) != 0) {
        return H2O_HTTP2_ERROR_PROTOCOL_CLOSE_IMMEDIATELY;
    }

    {
        h2o_iovec_t vec = h2o_buffer_reserve(&conn->_write.buf, SERVER_PREFACE.len);
        memcpy(vec.base, SERVER_PREFACE.base, SERVER_PREFACE.len);
        conn->_write.buf->size += SERVER_PREFACE.len;
        if (conn->http2_origin_frame) {

            h2o_http2_encode_origin_frame(&conn->_write.buf, *conn->http2_origin_frame);
        }
        h2o_http2_conn_request_write(conn);
    }

    conn->_read_expect = expect_default;
    return CONNECTION_PREFACE.len;
}
