
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_9__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int * cb; } ;
struct TYPE_12__ {scalar_t__ content_length; scalar_t__ req_body_bytes_received; TYPE_2__ write_req; int process_called; } ;
struct TYPE_10__ {int (* handle_input ) (struct st_h2o_http3_server_stream_t*,int const**,int const*,char const**) ;TYPE_9__* buf; } ;
struct st_h2o_http3_server_stream_t {int state; int read_blocked; int link; TYPE_4__* req_body; TYPE_3__ req; TYPE_6__* quic; TYPE_1__ recvbuf; } ;
struct TYPE_14__ {int req_streaming; int recv_body_blocked; int pending; } ;
struct st_h2o_http3_server_conn_t {TYPE_5__ delayed_streams; } ;
struct TYPE_16__ {size_t size; scalar_t__ bytes; } ;
struct TYPE_15__ {int recvstate; } ;
struct TYPE_13__ {scalar_t__ size; } ;


 int H2O_HTTP3_ERROR_GENERAL_PROTOCOL ;
 int H2O_HTTP3_ERROR_INCOMPLETE ;
 int H2O_HTTP3_ERROR_REQUEST_INCOMPLETE ;
 scalar_t__ H2O_HTTP3_REQUEST_BODY_MIN_BYTES_TO_BLOCK ;
 int H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT ;

 int H2O_HTTP3_SERVER_STREAM_STATE_RECV_BODY_BLOCKED ;


 int H2O_HTTP3_SERVER_STREAM_STATE_REQ_PENDING ;
 int H2O_HTTP3_SERVER_STREAM_STATE_SEND_HEADERS ;
 scalar_t__ SIZE_MAX ;
 int assert (int) ;
 int check_run_blocked (struct st_h2o_http3_server_conn_t*) ;
 struct st_h2o_http3_server_conn_t* get_conn (struct st_h2o_http3_server_stream_t*) ;
 int h2o_buffer_consume (TYPE_9__**,size_t) ;
 int h2o_linklist_insert (int *,int *) ;
 int h2o_linklist_is_linked (int *) ;
 int handle_input_expect_data (struct st_h2o_http3_server_stream_t*,int const**,int const*,char const**) ;
 int handle_input_post_trailers (struct st_h2o_http3_server_stream_t*,int const**,int const*,char const**) ;
 size_t quicly_recvstate_bytes_available (int *) ;
 scalar_t__ quicly_recvstate_transfer_complete (int *) ;
 int quicly_reset_stream (TYPE_6__*,int) ;
 scalar_t__ quicly_stop_requested (TYPE_6__*) ;
 int quicly_stream_sync_recvbuf (TYPE_6__*,size_t) ;
 int request_run_delayed (struct st_h2o_http3_server_conn_t*) ;
 int set_state (struct st_h2o_http3_server_stream_t*,int ) ;
 int stub1 (struct st_h2o_http3_server_stream_t*,int const**,int const*,char const**) ;

__attribute__((used)) static int handle_buffered_input(struct st_h2o_http3_server_stream_t *stream, const char **err_desc)
{
    struct st_h2o_http3_server_conn_t *conn = get_conn(stream);
    size_t bytes_available = quicly_recvstate_bytes_available(&stream->quic->recvstate);
    assert(bytes_available <= stream->recvbuf.buf->size);
    const uint8_t *src = (const uint8_t *)stream->recvbuf.buf->bytes, *src_end = src + bytes_available;
    int ret = 0;


    if (quicly_stop_requested(stream->quic)) {
        src = src_end;
    } else {
        while (src != src_end) {
            if ((ret = stream->recvbuf.handle_input(stream, &src, src_end, err_desc)) != 0)
                break;
            if (quicly_stop_requested(stream->quic)) {
                src = src_end;
                break;
            }
        }
    }
    if (!(ret == 0 || ret == H2O_HTTP3_ERROR_INCOMPLETE))
        return ret;
    size_t bytes_consumed = src - (const uint8_t *)stream->recvbuf.buf->bytes;
    h2o_buffer_consume(&stream->recvbuf.buf, bytes_consumed);
    quicly_stream_sync_recvbuf(stream->quic, bytes_consumed);
    if (quicly_stop_requested(stream->quic))
        return 0;

    if (quicly_recvstate_transfer_complete(&stream->quic->recvstate)) {
        if (ret != 0) {

            assert(ret == H2O_HTTP3_ERROR_INCOMPLETE);
            quicly_reset_stream(stream->quic, H2O_HTTP3_ERROR_GENERAL_PROTOCOL);
            set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);
        } else if (stream->recvbuf.buf->size == 0 && (stream->recvbuf.handle_input == handle_input_expect_data ||
                                                      stream->recvbuf.handle_input == handle_input_post_trailers)) {

            if (stream->req.content_length != SIZE_MAX && stream->req.content_length != stream->req.req_body_bytes_received) {
                quicly_reset_stream(stream->quic, stream->req.req_body_bytes_received < stream->req.content_length
                                                      ? H2O_HTTP3_ERROR_INCOMPLETE
                                                      : H2O_HTTP3_ERROR_GENERAL_PROTOCOL);
                set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);
            } else {
                if (stream->req.write_req.cb != ((void*)0)) {
                    if (!h2o_linklist_is_linked(&stream->link))
                        h2o_linklist_insert(&conn->delayed_streams.req_streaming, &stream->link);
                    request_run_delayed(conn);
                } else if (!stream->req.process_called && stream->state < H2O_HTTP3_SERVER_STREAM_STATE_SEND_HEADERS) {

                    switch (stream->state) {
                    case 128:
                    case 130:
                    case 129:
                        break;
                    default:
                        assert(!"unexpected state");
                        break;
                    }
                    set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_REQ_PENDING);
                    h2o_linklist_insert(&conn->delayed_streams.pending, &stream->link);
                    request_run_delayed(conn);
                }
            }
        } else {
            quicly_reset_stream(stream->quic, H2O_HTTP3_ERROR_REQUEST_INCOMPLETE);
            set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_CLOSE_WAIT);
        }
    } else {
        if (stream->state == 130 && stream->req_body != ((void*)0) &&
            stream->req_body->size >= H2O_HTTP3_REQUEST_BODY_MIN_BYTES_TO_BLOCK) {

            stream->read_blocked = 1;
            h2o_linklist_insert(&conn->delayed_streams.recv_body_blocked, &stream->link);
            set_state(stream, H2O_HTTP3_SERVER_STREAM_STATE_RECV_BODY_BLOCKED);
            check_run_blocked(conn);
        } else if (stream->req.write_req.cb != ((void*)0) && stream->req_body->size != 0) {

            if (!h2o_linklist_is_linked(&stream->link))
                h2o_linklist_insert(&conn->delayed_streams.req_streaming, &stream->link);
            request_run_delayed(conn);
        }
    }

    return 0;
}
