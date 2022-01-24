#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_20__   TYPE_3__ ;
typedef  struct TYPE_19__   TYPE_2__ ;
typedef  struct TYPE_18__   TYPE_1__ ;
typedef  struct TYPE_17__   TYPE_14__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int ssize_t ;
struct TYPE_18__ {scalar_t__ state; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_1__ h2o_http2_stream_t ;
struct TYPE_19__ {scalar_t__ type; scalar_t__ length; int flags; int /*<<< orphan*/  payload; int /*<<< orphan*/  stream_id; } ;
typedef  TYPE_2__ h2o_http2_frame_t ;
struct TYPE_20__ {TYPE_14__* _headers_unparsed; int /*<<< orphan*/  _read_expect; } ;
typedef  TYPE_3__ h2o_http2_conn_t ;
struct TYPE_17__ {scalar_t__ size; scalar_t__ bytes; } ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 int /*<<< orphan*/  H2O_HTTP2_ERROR_REFUSED_STREAM ; 
 int H2O_HTTP2_FRAME_FLAG_END_HEADERS ; 
 scalar_t__ H2O_HTTP2_FRAME_TYPE_CONTINUATION ; 
 int /*<<< orphan*/  H2O_HTTP2_SETTINGS_HOST_MAX_FRAME_SIZE ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_BODY ; 
 scalar_t__ H2O_HTTP2_STREAM_STATE_RECV_HEADERS ; 
 scalar_t__ H2O_MAX_REQLEN ; 
 int /*<<< orphan*/  expect_default ; 
 int /*<<< orphan*/  FUNC0 (TYPE_14__**) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_14__**,scalar_t__) ; 
 TYPE_1__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/ ,char const**) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_1__*) ; 
 int FUNC5 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,char const**) ; 
 int FUNC6 (TYPE_3__*,TYPE_1__*,int /*<<< orphan*/  const*,scalar_t__,char const**) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_3__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ssize_t FUNC9(h2o_http2_conn_t *conn, const uint8_t *src, size_t len, const char **err_desc)
{
    h2o_http2_frame_t frame;
    ssize_t ret;
    h2o_http2_stream_t *stream;
    int hret;

    if ((ret = FUNC3(&frame, src, len, H2O_HTTP2_SETTINGS_HOST_MAX_FRAME_SIZE, err_desc)) < 0)
        return ret;
    if (frame.type != H2O_HTTP2_FRAME_TYPE_CONTINUATION) {
        *err_desc = "expected CONTINUATION frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if ((stream = FUNC2(conn, frame.stream_id)) == NULL ||
        !(stream->state == H2O_HTTP2_STREAM_STATE_RECV_HEADERS || stream->state == H2O_HTTP2_STREAM_STATE_RECV_BODY)) {
        *err_desc = "unexpected stream id in CONTINUATION frame";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if (conn->_headers_unparsed->size + frame.length <= H2O_MAX_REQLEN) {
        FUNC1(&conn->_headers_unparsed, frame.length);
        FUNC7(conn->_headers_unparsed->bytes + conn->_headers_unparsed->size, frame.payload, frame.length);
        conn->_headers_unparsed->size += frame.length;

        if ((frame.flags & H2O_HTTP2_FRAME_FLAG_END_HEADERS) != 0) {
            conn->_read_expect = expect_default;
            if (stream->state == H2O_HTTP2_STREAM_STATE_RECV_HEADERS) {
                hret = FUNC5(conn, stream, (const uint8_t *)conn->_headers_unparsed->bytes,
                                               conn->_headers_unparsed->size, err_desc);
            } else {
                hret = FUNC6(conn, stream, (const uint8_t *)conn->_headers_unparsed->bytes,
                                               conn->_headers_unparsed->size, err_desc);
            }
            if (hret != 0)
                ret = hret;
            FUNC0(&conn->_headers_unparsed);
            conn->_headers_unparsed = NULL;
        }
    } else {
        /* request is too large (TODO log) */
        FUNC8(conn, stream->stream_id, H2O_HTTP2_ERROR_REFUSED_STREAM);
        FUNC4(conn, stream);
    }

    return ret;
}