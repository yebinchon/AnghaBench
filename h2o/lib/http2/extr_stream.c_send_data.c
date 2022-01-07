
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_6__ ;
typedef struct TYPE_22__ TYPE_5__ ;
typedef struct TYPE_21__ TYPE_4__ ;
typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;
typedef struct TYPE_17__ TYPE_12__ ;


struct TYPE_20__ {size_t len; TYPE_1__* callbacks; } ;
typedef TYPE_3__ h2o_sendvec_t ;
typedef int h2o_send_state_t ;
struct TYPE_21__ {size_t len; scalar_t__ base; } ;
typedef TYPE_4__ h2o_iovec_t ;
struct TYPE_22__ {int req; } ;
typedef TYPE_5__ h2o_http2_stream_t ;
struct TYPE_19__ {int buf; } ;
struct TYPE_23__ {TYPE_2__ _write; } ;
typedef TYPE_6__ h2o_http2_conn_t ;
struct TYPE_18__ {int (* flatten ) (TYPE_3__*,int *,int ,size_t) ;} ;
struct TYPE_17__ {scalar_t__ base; } ;


 scalar_t__ H2O_HTTP2_FRAME_HEADER_SIZE ;
 int H2O_SEND_STATE_IN_PROGRESS ;
 size_t calc_max_payload_size (TYPE_6__*,TYPE_5__*) ;
 int commit_data_header (TYPE_6__*,TYPE_5__*,int *,size_t,int ) ;
 TYPE_12__ h2o_buffer_reserve (int *,scalar_t__) ;
 int h2o_iovec_init (scalar_t__,size_t) ;
 int h2o_send_state_is_in_progress (int ) ;
 int stub1 (TYPE_3__*,int *,int ,size_t) ;
 size_t sz_min (size_t,size_t) ;

__attribute__((used)) static h2o_sendvec_t *send_data(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream, h2o_sendvec_t *bufs, size_t bufcnt,
                                size_t *off_within_buf, h2o_send_state_t send_state)
{
    h2o_iovec_t dst;
    size_t max_payload_size;

    if ((max_payload_size = calc_max_payload_size(conn, stream)) == 0)
        goto Exit;


    dst.base =
        h2o_buffer_reserve(&conn->_write.buf, H2O_HTTP2_FRAME_HEADER_SIZE + max_payload_size).base + H2O_HTTP2_FRAME_HEADER_SIZE;
    dst.len = max_payload_size;


    while (bufcnt != 0) {
        if (bufs->len != *off_within_buf)
            break;
        ++bufs;
        --bufcnt;
        *off_within_buf = 0;
    }
    while (bufcnt != 0) {
        size_t fill_size = sz_min(dst.len, bufs->len - *off_within_buf);
        if (!(*bufs->callbacks->flatten)(bufs, &stream->req, h2o_iovec_init(dst.base, fill_size), *off_within_buf))
            return ((void*)0);
        dst.base += fill_size;
        dst.len -= fill_size;
        *off_within_buf += fill_size;
        while (bufs->len == *off_within_buf) {
            ++bufs;
            --bufcnt;
            *off_within_buf = 0;
            if (bufcnt == 0)
                break;
        }
        if (dst.len == 0)
            break;
    }


    if (dst.len != max_payload_size || !h2o_send_state_is_in_progress(send_state)) {
        size_t payload_len = max_payload_size - dst.len;
        if (bufcnt != 0) {
            send_state = H2O_SEND_STATE_IN_PROGRESS;
        }
        commit_data_header(conn, stream, &conn->_write.buf, payload_len, send_state);
    }

Exit:
    return bufs;
}
