
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_63__ TYPE_9__ ;
typedef struct TYPE_62__ TYPE_8__ ;
typedef struct TYPE_61__ TYPE_7__ ;
typedef struct TYPE_60__ TYPE_6__ ;
typedef struct TYPE_59__ TYPE_5__ ;
typedef struct TYPE_58__ TYPE_4__ ;
typedef struct TYPE_57__ TYPE_3__ ;
typedef struct TYPE_56__ TYPE_37__ ;
typedef struct TYPE_55__ TYPE_34__ ;
typedef struct TYPE_54__ TYPE_2__ ;
typedef struct TYPE_53__ TYPE_25__ ;
typedef struct TYPE_52__ TYPE_22__ ;
typedef struct TYPE_51__ TYPE_21__ ;
typedef struct TYPE_50__ TYPE_20__ ;
typedef struct TYPE_49__ TYPE_1__ ;
typedef struct TYPE_48__ TYPE_19__ ;
typedef struct TYPE_47__ TYPE_18__ ;
typedef struct TYPE_46__ TYPE_17__ ;
typedef struct TYPE_45__ TYPE_16__ ;
typedef struct TYPE_44__ TYPE_15__ ;
typedef struct TYPE_43__ TYPE_14__ ;
typedef struct TYPE_42__ TYPE_13__ ;
typedef struct TYPE_41__ TYPE_12__ ;
typedef struct TYPE_40__ TYPE_11__ ;
typedef struct TYPE_39__ TYPE_10__ ;


typedef int ssize_t ;
struct TYPE_50__ {int len; int base; } ;
typedef TYPE_20__ h2o_iovec_t ;
struct TYPE_48__ {scalar_t__ promise_sent; } ;
struct TYPE_56__ {int size; int entries; } ;
struct TYPE_47__ {int status; TYPE_37__ headers; int content_length; } ;
struct TYPE_43__ {int len; int base; } ;
struct TYPE_55__ {TYPE_10__* entries; } ;
struct TYPE_63__ {int path; int authority; TYPE_8__* scheme; } ;
struct TYPE_59__ {int response_start_at; } ;
struct TYPE_53__ {TYPE_18__ res; int pool; scalar_t__ send_server_timing; TYPE_13__* hostconf; TYPE_14__ path; TYPE_34__ headers; TYPE_9__ input; TYPE_5__ timestamps; scalar_t__ reprocess_if_too_early; } ;
struct TYPE_51__ {int stream_id; TYPE_19__ push; int _link; TYPE_25__ req; int _scheduler; int * cache_digests; } ;
typedef TYPE_21__ h2o_http2_stream_t ;
struct TYPE_58__ {int buf; int streams_to_proceed; } ;
struct TYPE_61__ {TYPE_6__* ctx; } ;
struct TYPE_54__ {int max_frame_size; } ;
struct TYPE_49__ {scalar_t__ open; } ;
struct TYPE_45__ {int half_closed; int send_body; } ;
struct TYPE_44__ {scalar_t__ open; } ;
struct TYPE_46__ {TYPE_1__ priority; TYPE_16__ push; TYPE_15__ pull; } ;
struct TYPE_52__ {TYPE_4__ _write; TYPE_7__ super; TYPE_2__ peer_settings; int _output_header_table; int scheduler; TYPE_17__ num_streams; int * casper; } ;
typedef TYPE_22__ h2o_http2_conn_t ;
struct TYPE_62__ {int name; } ;
struct TYPE_60__ {TYPE_3__* globalconf; int loop; } ;
struct TYPE_57__ {int server_name; } ;
struct TYPE_40__ {scalar_t__ capacity_bits; scalar_t__ track_all_types; } ;
struct TYPE_41__ {scalar_t__ reprioritize_blocking_assets; TYPE_11__ casper; } ;
struct TYPE_42__ {TYPE_12__ http2; } ;
struct TYPE_39__ {TYPE_20__ value; } ;


 scalar_t__ H2O_CACHE_DIGESTS_STATE_FRESH ;
 int H2O_HTTP2_ERROR_INTERNAL ;
 int H2O_HTTP2_STREAM_STATE_END_STREAM ;
 int H2O_HTTP2_STREAM_STATE_SEND_BODY ;
 int H2O_STRLIT (char*) ;
 int H2O_TOKEN_ETAG ;
 int H2O_TOKEN_SET_COOKIE ;
 int h2o_add_header (int *,TYPE_37__*,int ,int *,int ,...) ;
 int h2o_add_header_by_str (int *,TYPE_37__*,int ,int ,int *,int ) ;
 int h2o_add_server_timing_header (TYPE_25__*,int) ;
 scalar_t__ h2o_cache_digests_lookup_by_url_and_etag (int *,int ,int ,int ,int ) ;
 TYPE_20__ h2o_concat (int *,int ,int ,int ,int ) ;
 int h2o_find_header (TYPE_34__*,int ,int) ;
 int h2o_gettimeofday (int ) ;
 int h2o_hpack_flatten_response (int *,int *,int ,int ,int,int ,int ,int *,int ) ;
 TYPE_20__ h2o_http2_casper_get_cookie (int *) ;
 scalar_t__ h2o_http2_casper_lookup (int *,int ,int ,int) ;
 int h2o_http2_conn_register_for_replay (TYPE_22__*,TYPE_21__*) ;
 int h2o_http2_conn_request_write (TYPE_22__*) ;
 int h2o_http2_encode_rst_stream_frame (int *,int ,int ) ;
 int * h2o_http2_scheduler_get_parent (int *) ;
 int h2o_http2_scheduler_rebind (int *,int *,int,int ) ;
 scalar_t__ h2o_http2_stream_is_push (int ) ;
 int h2o_http2_stream_send_push_promise (TYPE_22__*,TYPE_21__*) ;
 int h2o_http2_stream_set_state (TYPE_22__*,TYPE_21__*,int ) ;
 int h2o_iovec_init (int ) ;
 int h2o_linklist_insert (int *,int *) ;
 scalar_t__ is_blocking_asset (TYPE_25__*) ;

__attribute__((used)) static int send_headers(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (stream->req.res.status == 425 && stream->req.reprocess_if_too_early) {
        h2o_http2_conn_register_for_replay(conn, stream);
        return -1;
    }

    stream->req.timestamps.response_start_at = h2o_gettimeofday(conn->super.ctx->loop);


    if (h2o_http2_stream_is_push(stream->stream_id)) {
        if (400 <= stream->req.res.status)
            goto CancelPush;
        if (stream->cache_digests != ((void*)0)) {
            ssize_t etag_index = h2o_find_header(&stream->req.headers, H2O_TOKEN_ETAG, -1);
            if (etag_index != -1) {
                h2o_iovec_t url = h2o_concat(&stream->req.pool, stream->req.input.scheme->name, h2o_iovec_init(H2O_STRLIT("://")),
                                             stream->req.input.authority, stream->req.input.path);
                h2o_iovec_t *etag = &stream->req.headers.entries[etag_index].value;
                if (h2o_cache_digests_lookup_by_url_and_etag(stream->cache_digests, url.base, url.len, etag->base, etag->len) ==
                    H2O_CACHE_DIGESTS_STATE_FRESH)
                    goto CancelPush;
            }
        }
    }


    if (stream->cache_digests != ((void*)0) && stream->req.hostconf->http2.casper.capacity_bits != 0) {
        h2o_add_header(&stream->req.pool, &stream->req.res.headers, H2O_TOKEN_SET_COOKIE, ((void*)0),
                       H2O_STRLIT("h2o_casper=; Path=/; Expires=Sat, 01 Jan 2000 00:00:00 GMT"));
    }


    if (conn->casper != ((void*)0)) {

        if (stream->req.hostconf->http2.casper.track_all_types || is_blocking_asset(&stream->req)) {
            if (h2o_http2_casper_lookup(conn->casper, stream->req.path.base, stream->req.path.len, 1)) {

                if (h2o_http2_stream_is_push(stream->stream_id))
                    goto CancelPush;
            }
        }
        if (stream->cache_digests != ((void*)0))
            goto SkipCookie;




        if (h2o_http2_stream_is_push(stream->stream_id)) {
            if (!(conn->num_streams.pull.open == 0 && (conn->num_streams.push.half_closed - conn->num_streams.push.send_body) == 1))
                goto SkipCookie;
        } else {
            if (conn->num_streams.push.half_closed - conn->num_streams.push.send_body != 0)
                goto SkipCookie;
        }
        h2o_iovec_t cookie = h2o_http2_casper_get_cookie(conn->casper);
        h2o_add_header(&stream->req.pool, &stream->req.res.headers, H2O_TOKEN_SET_COOKIE, ((void*)0), cookie.base, cookie.len);
    SkipCookie:;
    }

    if (h2o_http2_stream_is_push(stream->stream_id)) {

        if (!stream->push.promise_sent)
            h2o_http2_stream_send_push_promise(conn, stream);

        if (is_blocking_asset(&stream->req))
            h2o_http2_scheduler_rebind(&stream->_scheduler, &conn->scheduler, 257, 0);
    } else {



        if (conn->num_streams.priority.open == 0 && stream->req.hostconf->http2.reprioritize_blocking_assets &&
            h2o_http2_scheduler_get_parent(&stream->_scheduler) == &conn->scheduler && is_blocking_asset(&stream->req))
            h2o_http2_scheduler_rebind(&stream->_scheduler, &conn->scheduler, 257, 0);
    }


    if (h2o_http2_stream_is_push(stream->stream_id))
        h2o_add_header_by_str(&stream->req.pool, &stream->req.res.headers, H2O_STRLIT("x-http2-push"), 0, ((void*)0),
                              H2O_STRLIT("pushed"));
    if (stream->req.send_server_timing)
        h2o_add_server_timing_header(&stream->req, 1);
    h2o_hpack_flatten_response(&conn->_write.buf, &conn->_output_header_table, stream->stream_id,
                               conn->peer_settings.max_frame_size, stream->req.res.status, stream->req.res.headers.entries,
                               stream->req.res.headers.size, &conn->super.ctx->globalconf->server_name,
                               stream->req.res.content_length);
    h2o_http2_conn_request_write(conn);
    h2o_http2_stream_set_state(conn, stream, H2O_HTTP2_STREAM_STATE_SEND_BODY);

    return 0;

CancelPush:
    h2o_add_header_by_str(&stream->req.pool, &stream->req.res.headers, H2O_STRLIT("x-http2-push"), 0, ((void*)0),
                          H2O_STRLIT("cancelled"));
    h2o_http2_stream_set_state(conn, stream, H2O_HTTP2_STREAM_STATE_END_STREAM);
    h2o_linklist_insert(&conn->_write.streams_to_proceed, &stream->_link);
    if (stream->push.promise_sent) {
        h2o_http2_encode_rst_stream_frame(&conn->_write.buf, stream->stream_id, -H2O_HTTP2_ERROR_INTERNAL);
        h2o_http2_conn_request_write(conn);
    }
    return -1;
}
