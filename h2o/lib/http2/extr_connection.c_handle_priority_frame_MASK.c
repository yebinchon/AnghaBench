#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_34__   TYPE_9__ ;
typedef  struct TYPE_33__   TYPE_8__ ;
typedef  struct TYPE_32__   TYPE_7__ ;
typedef  struct TYPE_31__   TYPE_6__ ;
typedef  struct TYPE_30__   TYPE_5__ ;
typedef  struct TYPE_29__   TYPE_4__ ;
typedef  struct TYPE_28__   TYPE_3__ ;
typedef  struct TYPE_27__   TYPE_2__ ;
typedef  struct TYPE_26__   TYPE_1__ ;
typedef  struct TYPE_25__   TYPE_11__ ;
typedef  struct TYPE_24__   TYPE_10__ ;

/* Type definitions */
struct TYPE_34__ {scalar_t__ dependency; } ;
struct TYPE_33__ {int /*<<< orphan*/  _scheduler; TYPE_9__ received_priority; } ;
typedef  TYPE_8__ h2o_http2_stream_t ;
typedef  TYPE_9__ h2o_http2_priority_t ;
struct TYPE_24__ {scalar_t__ stream_id; } ;
typedef  TYPE_10__ h2o_http2_frame_t ;
struct TYPE_32__ {TYPE_6__* ctx; } ;
struct TYPE_27__ {scalar_t__ open; } ;
struct TYPE_28__ {TYPE_2__ priority; } ;
struct TYPE_26__ {scalar_t__ max_open; } ;
struct TYPE_25__ {TYPE_7__ super; TYPE_3__ num_streams; TYPE_1__ pull_stream_ids; } ;
typedef  TYPE_11__ h2o_http2_conn_t ;
struct TYPE_31__ {TYPE_5__* globalconf; } ;
struct TYPE_29__ {scalar_t__ max_streams_for_priority; } ;
struct TYPE_30__ {TYPE_4__ http2; } ;

/* Variables and functions */
 int H2O_HTTP2_ERROR_ENHANCE_YOUR_CALM ; 
 int H2O_HTTP2_ERROR_PROTOCOL ; 
 TYPE_8__* FUNC0 (TYPE_11__*,scalar_t__) ; 
 int FUNC1 (TYPE_9__*,TYPE_10__*,char const**) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 TYPE_8__* FUNC4 (TYPE_11__*,scalar_t__,int /*<<< orphan*/ *,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_11__*,TYPE_8__*,TYPE_9__*,int) ; 

__attribute__((used)) static int FUNC6(h2o_http2_conn_t *conn, h2o_http2_frame_t *frame, const char **err_desc)
{
    h2o_http2_priority_t payload;
    h2o_http2_stream_t *stream;
    int ret;

    if ((ret = FUNC1(&payload, frame, err_desc)) != 0)
        return ret;
    if (frame->stream_id == payload.dependency) {
        *err_desc = "stream cannot depend on itself";
        return H2O_HTTP2_ERROR_PROTOCOL;
    }

    if ((stream = FUNC0(conn, frame->stream_id)) != NULL) {
        stream->received_priority = payload;
        /* ignore priority changes to pushed streams with weight=257, since that is where we are trying to be smarter than the web
         * browsers
         */
        if (FUNC2(&stream->_scheduler) != 257)
            FUNC5(conn, stream, &payload, 1);
    } else {
        if (FUNC3(frame->stream_id)) {
            /* Ignore PRIORITY frames for closed or idle pushed streams */
            return 0;
        } else {
            /* Ignore PRIORITY frames for closed pull streams */
            if (frame->stream_id <= conn->pull_stream_ids.max_open)
                return 0;
        }
        if (conn->num_streams.priority.open >= conn->super.ctx->globalconf->http2.max_streams_for_priority) {
            *err_desc = "too many streams in idle/closed state";
            /* RFC 7540 10.5: An endpoint MAY treat activity that is suspicious as a connection error (Section 5.4.1) of type
             * ENHANCE_YOUR_CALM.
             */
            return H2O_HTTP2_ERROR_ENHANCE_YOUR_CALM;
        }
        stream = FUNC4(conn, frame->stream_id, NULL, &payload);
        FUNC5(conn, stream, &payload, 0);
    }

    return 0;
}