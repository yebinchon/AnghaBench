#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_63__   TYPE_9__ ;
typedef  struct TYPE_62__   TYPE_8__ ;
typedef  struct TYPE_61__   TYPE_7__ ;
typedef  struct TYPE_60__   TYPE_6__ ;
typedef  struct TYPE_59__   TYPE_5__ ;
typedef  struct TYPE_58__   TYPE_4__ ;
typedef  struct TYPE_57__   TYPE_3__ ;
typedef  struct TYPE_56__   TYPE_37__ ;
typedef  struct TYPE_55__   TYPE_34__ ;
typedef  struct TYPE_54__   TYPE_2__ ;
typedef  struct TYPE_53__   TYPE_25__ ;
typedef  struct TYPE_52__   TYPE_22__ ;
typedef  struct TYPE_51__   TYPE_21__ ;
typedef  struct TYPE_50__   TYPE_20__ ;
typedef  struct TYPE_49__   TYPE_1__ ;
typedef  struct TYPE_48__   TYPE_19__ ;
typedef  struct TYPE_47__   TYPE_18__ ;
typedef  struct TYPE_46__   TYPE_17__ ;
typedef  struct TYPE_45__   TYPE_16__ ;
typedef  struct TYPE_44__   TYPE_15__ ;
typedef  struct TYPE_43__   TYPE_14__ ;
typedef  struct TYPE_42__   TYPE_13__ ;
typedef  struct TYPE_41__   TYPE_12__ ;
typedef  struct TYPE_40__   TYPE_11__ ;
typedef  struct TYPE_39__   TYPE_10__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_50__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
typedef  TYPE_20__ h2o_iovec_t ;
struct TYPE_48__ {scalar_t__ promise_sent; } ;
struct TYPE_56__ {int /*<<< orphan*/  size; int /*<<< orphan*/  entries; } ;
struct TYPE_47__ {int status; TYPE_37__ headers; int /*<<< orphan*/  content_length; } ;
struct TYPE_43__ {int /*<<< orphan*/  len; int /*<<< orphan*/  base; } ;
struct TYPE_55__ {TYPE_10__* entries; } ;
struct TYPE_63__ {int /*<<< orphan*/  path; int /*<<< orphan*/  authority; TYPE_8__* scheme; } ;
struct TYPE_59__ {int /*<<< orphan*/  response_start_at; } ;
struct TYPE_53__ {TYPE_18__ res; int /*<<< orphan*/  pool; scalar_t__ send_server_timing; TYPE_13__* hostconf; TYPE_14__ path; TYPE_34__ headers; TYPE_9__ input; TYPE_5__ timestamps; scalar_t__ reprocess_if_too_early; } ;
struct TYPE_51__ {int /*<<< orphan*/  stream_id; TYPE_19__ push; int /*<<< orphan*/  _link; TYPE_25__ req; int /*<<< orphan*/  _scheduler; int /*<<< orphan*/ * cache_digests; } ;
typedef  TYPE_21__ h2o_http2_stream_t ;
struct TYPE_58__ {int /*<<< orphan*/  buf; int /*<<< orphan*/  streams_to_proceed; } ;
struct TYPE_61__ {TYPE_6__* ctx; } ;
struct TYPE_54__ {int /*<<< orphan*/  max_frame_size; } ;
struct TYPE_49__ {scalar_t__ open; } ;
struct TYPE_45__ {int half_closed; int send_body; } ;
struct TYPE_44__ {scalar_t__ open; } ;
struct TYPE_46__ {TYPE_1__ priority; TYPE_16__ push; TYPE_15__ pull; } ;
struct TYPE_52__ {TYPE_4__ _write; TYPE_7__ super; TYPE_2__ peer_settings; int /*<<< orphan*/  _output_header_table; int /*<<< orphan*/  scheduler; TYPE_17__ num_streams; int /*<<< orphan*/ * casper; } ;
typedef  TYPE_22__ h2o_http2_conn_t ;
struct TYPE_62__ {int /*<<< orphan*/  name; } ;
struct TYPE_60__ {TYPE_3__* globalconf; int /*<<< orphan*/  loop; } ;
struct TYPE_57__ {int /*<<< orphan*/  server_name; } ;
struct TYPE_40__ {scalar_t__ capacity_bits; scalar_t__ track_all_types; } ;
struct TYPE_41__ {scalar_t__ reprioritize_blocking_assets; TYPE_11__ casper; } ;
struct TYPE_42__ {TYPE_12__ http2; } ;
struct TYPE_39__ {TYPE_20__ value; } ;

/* Variables and functions */
 scalar_t__ H2O_CACHE_DIGESTS_STATE_FRESH ; 
 int /*<<< orphan*/  H2O_HTTP2_ERROR_INTERNAL ; 
 int /*<<< orphan*/  H2O_HTTP2_STREAM_STATE_END_STREAM ; 
 int /*<<< orphan*/  H2O_HTTP2_STREAM_STATE_SEND_BODY ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  H2O_TOKEN_ETAG ; 
 int /*<<< orphan*/  H2O_TOKEN_SET_COOKIE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_37__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_37__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_25__*,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_20__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (TYPE_34__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_20__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_22__*,TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_22__*) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_22__*,TYPE_21__*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_22__*,TYPE_21__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (TYPE_25__*) ; 

__attribute__((used)) static int FUNC22(h2o_http2_conn_t *conn, h2o_http2_stream_t *stream)
{
    if (stream->req.res.status == 425 && stream->req.reprocess_if_too_early) {
        FUNC11(conn, stream);
        return -1;
    }

    stream->req.timestamps.response_start_at = FUNC7(conn->super.ctx->loop);

    /* cancel push with an error response */
    if (FUNC16(stream->stream_id)) {
        if (400 <= stream->req.res.status)
            goto CancelPush;
        if (stream->cache_digests != NULL) {
            ssize_t etag_index = FUNC6(&stream->req.headers, H2O_TOKEN_ETAG, -1);
            if (etag_index != -1) {
                h2o_iovec_t url = FUNC5(&stream->req.pool, stream->req.input.scheme->name, FUNC19(FUNC0("://")),
                                             stream->req.input.authority, stream->req.input.path);
                h2o_iovec_t *etag = &stream->req.headers.entries[etag_index].value;
                if (FUNC4(stream->cache_digests, url.base, url.len, etag->base, etag->len) ==
                    H2O_CACHE_DIGESTS_STATE_FRESH)
                    goto CancelPush;
            }
        }
    }

    /* reset casper cookie in case cache-digests exist */
    if (stream->cache_digests != NULL && stream->req.hostconf->http2.casper.capacity_bits != 0) {
        FUNC1(&stream->req.pool, &stream->req.res.headers, H2O_TOKEN_SET_COOKIE, NULL,
                       FUNC0("h2o_casper=; Path=/; Expires=Sat, 01 Jan 2000 00:00:00 GMT"));
    }

    /* CASPER */
    if (conn->casper != NULL) {
        /* update casper if necessary */
        if (stream->req.hostconf->http2.casper.track_all_types || FUNC21(&stream->req)) {
            if (FUNC10(conn->casper, stream->req.path.base, stream->req.path.len, 1)) {
                /* cancel if the pushed resource is already marked as cached */
                if (FUNC16(stream->stream_id))
                    goto CancelPush;
            }
        }
        if (stream->cache_digests != NULL)
            goto SkipCookie;
        /* browsers might ignore push responses, or they may process the responses in a different order than they were pushed.
         * Therefore H2O tries to include casper cookie only in the last stream that may be received by the client, or when the
         * value become stable; see also: https://github.com/h2o/h2o/issues/421
         */
        if (FUNC16(stream->stream_id)) {
            if (!(conn->num_streams.pull.open == 0 && (conn->num_streams.push.half_closed - conn->num_streams.push.send_body) == 1))
                goto SkipCookie;
        } else {
            if (conn->num_streams.push.half_closed - conn->num_streams.push.send_body != 0)
                goto SkipCookie;
        }
        h2o_iovec_t cookie = FUNC9(conn->casper);
        FUNC1(&stream->req.pool, &stream->req.res.headers, H2O_TOKEN_SET_COOKIE, NULL, cookie.base, cookie.len);
    SkipCookie:;
    }

    if (FUNC16(stream->stream_id)) {
        /* for push, send the push promise */
        if (!stream->push.promise_sent)
            FUNC17(conn, stream);
        /* send ASAP if it is a blocking asset (even in case of Firefox we can't wait 1RTT for it to reprioritize the asset) */
        if (FUNC21(&stream->req))
            FUNC15(&stream->_scheduler, &conn->scheduler, 257, 0);
    } else {
        /* raise the priority of asset files that block rendering to highest if the user-agent is _not_ using dependency-based
         * prioritization (e.g. that of Firefox)
         */
        if (conn->num_streams.priority.open == 0 && stream->req.hostconf->http2.reprioritize_blocking_assets &&
            FUNC14(&stream->_scheduler) == &conn->scheduler && FUNC21(&stream->req))
            FUNC15(&stream->_scheduler, &conn->scheduler, 257, 0);
    }

    /* send HEADERS, as well as start sending body */
    if (FUNC16(stream->stream_id))
        FUNC2(&stream->req.pool, &stream->req.res.headers, FUNC0("x-http2-push"), 0, NULL,
                              FUNC0("pushed"));
    if (stream->req.send_server_timing)
        FUNC3(&stream->req, 1);
    FUNC8(&conn->_write.buf, &conn->_output_header_table, stream->stream_id,
                               conn->peer_settings.max_frame_size, stream->req.res.status, stream->req.res.headers.entries,
                               stream->req.res.headers.size, &conn->super.ctx->globalconf->server_name,
                               stream->req.res.content_length);
    FUNC12(conn);
    FUNC18(conn, stream, H2O_HTTP2_STREAM_STATE_SEND_BODY);

    return 0;

CancelPush:
    FUNC2(&stream->req.pool, &stream->req.res.headers, FUNC0("x-http2-push"), 0, NULL,
                          FUNC0("cancelled"));
    FUNC18(conn, stream, H2O_HTTP2_STREAM_STATE_END_STREAM);
    FUNC20(&conn->_write.streams_to_proceed, &stream->_link);
    if (stream->push.promise_sent) {
        FUNC13(&conn->_write.buf, stream->stream_id, -H2O_HTTP2_ERROR_INTERNAL);
        FUNC12(conn);
    }
    return -1;
}